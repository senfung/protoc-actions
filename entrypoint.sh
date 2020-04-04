#!/bin/sh

set -e
pwd
echo $1
echo $2

cd ..
mv workspace $2
ls
cd $2
pwd

sh -c "protoc $1"

cd ..
mv $2 workspace
cd workspace
