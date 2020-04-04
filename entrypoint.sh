#!/bin/sh

set -e
pwd
echo $1
echo $2
if [[ ! -z "$2" ]]; then
	cd ..
	mv workspace $2
	ls
	cd $2
	pwd
fi

sh -c "protoc $1"
if [[ ! -z "$2" ]]; then
	cd ..
	mv $2 workspace
	cd workspace
fi
