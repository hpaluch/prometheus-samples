#!/bin/bash

set -ueo pipefail
cd `dirname $0`
cd tree

for i in `find . -type f`
do
	src="$i"
	src=$(echo "$src" | sed 's/dot\././')
	if [ "$i" = "./.gitignore" ]; then
		continue
	fi

	[ -f "/$src" ] || {
		echo "WARN: File '/$src' does not exist - IGNORED"
		continue;
	}

	[ -r "/$src" ] || {
		echo "WARN: File '/$src' unreadable - IGNORED"
		ls -l "/$src"
		continue;
	}

	#echo "'$src' -> '$i'"
	diff --color=always -u "$i" "/$src" || {
		echo -n "File $i changed - copy [y/N]?"
		read ans
		case "$ans" in
			y*|Y*)
				cp -v	"/$src" "$i" 
				;;
			*)
				echo "Copy Skipped"
				;;
		esac
	}
done
