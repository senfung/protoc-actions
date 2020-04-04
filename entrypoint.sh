#!/bin/sh

set -e
pwd
echo $1
echo $2

mkdir $2
find . ! -name . -prune ! -name $2 -exec mv {} $2/ \;
cd $DUMDIR
pwd
sh -c "protoc $1"

mv * ../
cd ..
pwd