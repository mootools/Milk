#!/bin/sh

for repo in `find . -maxdepth 2 -mindepth 2 -wholename '*/.git'`
do
	cd $repo/..
	echo "updating $(pwd)"
	remote='origin'
	if [ `git remote | grep mootools` ]; then
		remote='mootools'
	fi
	git fetch $remote
	git reset --hard $remote/master
	cd ..
done

