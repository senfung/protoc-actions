#!/bin/sh

set -e
pwd
echo $1
echo $2
ls
echo "=======CREATED DIR========"
mkdir $2
ls
pwd
find . ! -name . -prune ! -name $2 -exec mv {} $2/ \;
echo "=======MOVIED========"
ls ./$
echo "=======CHECK========"
ls ./$2
echo "=======GO IN========"
cd ./$2
ls
pwd
sh -c "protoc $1"
echo "=======EXECUTED========"
echo "=======BACK OUT+======="
mv * ../
cd ..
pwd