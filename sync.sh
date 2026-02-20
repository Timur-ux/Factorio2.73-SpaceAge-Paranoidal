#!/usr/bin/env bash

#
# sync custom-mods/* with $FACTORIO/mods/
# with -a flag also sync mods/*

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
printHelpMessage() {
	echo "Usage: $1 [OPTIONS] <path to game's files>"
	echo "Or set FACTORIO env variable such as $$FACTORIO/mods -- the folder with mods"
	echo "option: -a -- sync both mods/* and custom-mods/* mods"
	echo "option: -h -- print help message end exit"
}

syncAll="false"
while getopts ':ah' flag; do
	case "$flag" in
		h)
			printHelpMessage "$0"
			exit 0
			;;
		a)
			syncAll="true"
			;;
		\?)
			echo "Invalid option: -$OPTARG" >&2
			exit 1
			;;
		:)
			echo "Option -$OPTARG requires an argument" >&2
			exit 1
			;;
	esac
done

shift $((OPTIND - 1))

if [[ $# < 1 && "$FACTORIO" == "" ]]; then
	printHelpMessage "$0"
	exit 0
fi

gameDir="$FACTORIO"
if [[ "$FACTORIO" == "" ]]; then
	gameDir="$1"
fi

if [[ "$syncAll" == "true" ]]; then
	echo "Removing all mods from $gameDir/mods/ and copy mods and custom-mods to $gameDir/mods/"
	read -p "Continue? (Ctrl-C to cancel)"
	rm "$gameDir/mods/*" -rf
	rsync -r "$SCRIPT_DIR/mods/" "$gameDir/mods/"
	rsync -r "$SCRIPT_DIR/custom-mods/" "$gameDir/mods/"
else
	echo "Copy custom-mods to $gameDir/mods/"
	rsync -r "$SCRIPT_DIR/custom-mods/" "$gameDir/mods/"
fi
