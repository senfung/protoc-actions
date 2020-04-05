#!/bin/sh

set -e

echo $1
echo $2
mkdir $2

find . ! -name . -prune ! -name $2 -exec mv {} $2/ \;
cd ./$2

sh -c "protoc $1"

mv * ../
cd ..
rm -rf $2
