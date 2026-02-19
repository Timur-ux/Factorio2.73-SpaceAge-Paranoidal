#!/usr/bin/python3

#
# created definition file from given prototype json file
#

import sys
import json
from typing import Any
from typing_extensions import Dict, List
import re

if len(sys.argv) < 3:
    print(f"Usage: {sys.argv[0]} <prototypes-file> <output-file>")
    exit(0)


def tryParseComplex(s: dict | Any):
    if type(s) is dict:
        _data = s
    else:
        return s
    result = f"{_data['complex_type']}:"
    first = True
    for key, value in _data.items():
        if key == "complex_type":
            continue
        result += (" " if first else ", ") + \
            key + ": " + str(tryParseComplex(value))
        first = False
    return result


class Property:
    def __init__(self, name: str, type: str, description: str, default: str | None, optional: bool) -> None:
        self.name: str = name
        self.type: str = type
        self.description: str = description.replace("\n", " ")
        self.default: str | None = default
        self.optional: bool = optional

        if default is not None:
            self.default = tryParseComplex(default)

    def to_string(self):
        return f"---@field {self.name}{'? ' if self.optional else ' '}{self.type} {'(default: '+str(self.default) + ') ' if self.default is not None else " "}{self.description} "


class Prototype:
    def __init__(self, name: str, parent: str | None, deprecated: bool, typename: str, description: str, props: List[Property]) -> None:
        self.name: str = name
        self.parent: str | None = parent
        self.deprecated: bool = deprecated
        self.typename: str = typename
        self.description: str = description
        self.properties: List[Property] = props

    def to_string(self):
        fields = ""
        for prop in self.properties:
            fields += prop.to_string() + '\n'

        result = f"""
---@class (exact) {self.name} {': ' + self.parent if self.parent is not None else ""}
{fields}{'---@parent ' + self.parent if self.parent else '---'}
{'---@deprecated' if self.deprecated else '---'}
--- {self.description}
--- typename: {self.typename}
""".replace("\n", "\n---").replace("------", "---")
        while result.endswith("---"):
            result = result[:-4]
        return result + f"\n{self.name} = "+"{}"


preview = """
---@meta

"""


def createDefinitionFile(path: str):
    if not path.endswith(".d.lua"):
        path += ".d.lua"
    file = open(path, "w")
    file.write(preview)
    return file


def parseJsonProtoFile(path: str):
    with open(path, "r") as file:
        return json.load(file)


jData = parseJsonProtoFile(sys.argv[1])


def parseProp(jData: Dict) -> Property:
    return Property(name=jData["name"], type=jData["type"], description=jData.get("description", ""), default=jData.get("default"), optional=jData["optional"])


def parseProto(jData: Dict) -> Prototype:
    props = list(map(parseProp, jData["properties"]))
    return Prototype(name=jData["name"], parent=jData.get("parent", None), deprecated=jData.get("deprecated", False), typename=jData.get("typename", "null"), description=jData["description"], props=props)


prototypes = {p.name: p for p in map(parseProto, jData["prototypes"])}
writed = {p: False for p in prototypes.keys()}


defFile = createDefinitionFile(sys.argv[2])

def serialize(proto, prototypes, writed, file):
    if writed[proto.name]:
        return
    if proto.parent and not writed[proto.parent]:
        serialize(prototypes[proto.parent], prototypes, writed, file)

    file.write(proto.to_string() + "\n\n")
    writed[proto.name] = True

for proto in prototypes.values():
    serialize(proto, prototypes, writed, defFile)

defFile.close()
