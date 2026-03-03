#! /usr/bin/python3
import pathlib
import json
import re
from typing import Dict, List
from typing_extensions import Tuple


jsonFile = input("Input path to json tech data file: ")
dataDirs = input(
    "Input comma(,) separated paths to directiries with factorio data(mods): ").split(',')
print()

with open(jsonFile, "r") as file:
    data = json.load(file)


class Unit:
    def __init__(self, time: int, ingredients: List[Tuple[str, int]], count: int | None = None) -> None:
        self.time: int = time
        self.ingredients: List[Tuple[str, int]] = ingredients
        self.count: int | None = count

    @staticmethod
    def FromJson(jData: Dict | None):
        if jData is None:
            return None
        return Unit(jData["time"], jData["ingredients"], jData.get("count"))


class Resolver:
    def __init__(self, paths: List[str]) -> None:
        self.ids = {}
        self.mods = {}
        for path in paths:
            path = pathlib.Path(path)
            for item in path.iterdir():
                if item.is_dir() and (item / "info.json").exists():
                    with open(item / "info.json", "r") as file:
                        modData = json.load(file)
                    self.mods[modData["name"]] = item

    def resolvePath(self, path: str) -> str:
        pathItems = path.split("/")
        modName = pathItems[0]
        if modName.startswith("__"):
            modName = modName[2:]
        if modName.endswith("__"):
            modName = modName[:-2]

        return self.mods[modName] / "/".join(pathItems[1:])

    def registerName(self, name: str) -> None:
        # f"{self.cvtName_(name)}_{len(self.ids)}"
        self.ids[name] = name.replace("-", "_")

    def resolveName(self, name: str) -> str:
        return self.ids.get(name, "None")

    def cvtName_(self, name: str) -> str:
        return "_".join(re.split("[^A-Za-z]", name))


class Tech:
    def __init__(self, name: str, iconPath: str | None, unit: Unit | None, research_trigger: Dict | None, effects: List[Dict] = [], prerequisites: List[str] = []) -> None:
        self.name: str = name
        self.iconPath: str | None = iconPath
        self.unit: Unit | None = unit
        self.research_trigger: Dict | None = research_trigger
        self.effects: List[Dict] = effects
        self.prerequisites: List[str] = prerequisites

    @staticmethod
    def FromJson(jData: Dict):
        return Tech(jData["name"], jData.get("icon"),
                    Unit.FromJson(jData.get("unit")),
                    jData.get("research_trigger"),
                    jData.get("effects", []),
                    jData.get("prerequisites", []))

    def ToPlantUmlEntity(self, resolver: Resolver) -> str:
        img = f"<img:{resolver.resolvePath(self.iconPath)}{r'{scale=0.2}'}>" if self.iconPath is not None else ""
        return f'rectangle "{img}\\n{self.name}" as {resolver.resolveName(self.name)}'

    def ToPlantUmlRelations(self, resolver: Resolver) -> str:
        selfName = resolver.resolveName(self.name)
        result = "\n".join(
            f"{resolver.resolveName(prereq)} --> {selfName}" for prereq in self.prerequisites)
        # for i in range(1, len(self.prerequisites)):
        #     result += f"\n{resolver.resolveName(self.prerequisites[i-1])} -> {resolver.resolveName(self.prerequisites[i])}\n"

        return result


techs: Dict[str, Tech] = {tech["name"]: Tech.FromJson(tech) for tech in data}

resolver = Resolver(dataDirs)
for tech in techs.keys():
    resolver.registerName(tech)

print("left to right direction")
print('rectangle "Unknown" as None')

PRINT_AMOUNT=10000
printed = set()

def printTech(tech: Tech):
    if(len(printed) >= PRINT_AMOUNT):
        return
    for prereq in tech.prerequisites:
        if prereq is not None and not prereq in printed:
            printTech(techs[prereq])
    print(tech.ToPlantUmlEntity(resolver))
    print(tech.ToPlantUmlRelations(resolver))
    printed.add(tech.name)

for tName, tech in techs.items():
    if not tName in printed:
        printTech(tech)

