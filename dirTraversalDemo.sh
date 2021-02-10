#!/bin/bash

DIRS=( $(ls -d */) )
for DIRNAME in "${DIRS[@]}";do
	cd $DIRNAME
	ls
	echo "$DIRNAME done."
	cd ..
done
