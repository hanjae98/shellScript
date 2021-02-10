#!/bin/bash

DIRS=( $(ls -d */) )
for DIRNAME in "${DIRS[@]}";do
	cd $DIRNAME
	if ls | grep 'contents.txt';then
		rm 'contents.txt'
	fi
	py_contents.sh
	echo "$DIRNAME done."
	cd ..
done
