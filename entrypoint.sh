#!/bin/sh

set -e

echo $1
echo $2
mkdir $2

ls -a

find . ! -name . -prune ! -name $2 -exec mv {} $2/ \;
ls -a
cd ./$2

sh -c "protoc $1"

mv * ../
ls -a
cd ..
rm -rf $2
ls -a