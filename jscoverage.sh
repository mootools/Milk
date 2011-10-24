#!/bin/bash

AVAILABLE='Base'
SOURCE=$PWD
TARGET=$PWD

JSCOVERAGE='/usr/bin/jscoverage'
OPTIONS='--no-instrument=Specs --exclude=Docs --exclude=package.json --exclude=README.md --exclude=.git --exclude=.gitignore --exclude=.gitmodules'

if [ -z "$1" ]; then
	MODULES=$AVAILABLE
else
	MODULES=''
	for M in $@; do
		if [[ $AVAILABLE == *$M* ]]; then
			MODULES="$MODULES $M"
		fi
	done
fi

test -d coverage || mkdir coverage

for M in $MODULES; do
	echo "creating $M-coverage..."
	test -d "$TARGET/coverage/$M" && rm -r "$TARGET/coverage/$M"
	$JSCOVERAGE $OPTIONS "$SOURCE/$M" "$TARGET/coverage/$M"
done
