#!/usr/bin/env bash
echo "$(find $FACTORIO/mods/ -maxdepth 1 -type d)" | while IFS=  read -r D; do
	modname=$(echo "$D" | awk -F'/' '{print $NF}')
	mkdir -p "./mods-state/mods/$modname"
	cp "$D/info.json" "./mods-state/mods/$modname/"
	echo "Copied info of: $modname"
done

