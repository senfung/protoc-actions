#!/bin/sh

set -e
pwd
echo $1
echo $2
ls
echo "==============="
mkdir $2
ls
pwd
find . ! -name . -prune ! -name $2 -exec mv {} $2/ \;
echo "==============="
cd github/workspace/$DUMDIR
ls
pwd
sh -c "protoc $1"
echo "==============="
mv * ../
cd ..
pwd