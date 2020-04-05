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
echo "=======GO IN========"
cd ./$2
pwd
ls
echo "=======VERIFY PATH========"
cd ..
pwd
ls ./protoc-go-actions/testProto/A/
cd protoc-go-actions
pwd
# cd testProto
# pwd
# cd A
# pwd
# ls
cat ../protoc-go-actions/testProto/A/A.proto
sh -c "protoc $1"
echo "=======EXECUTED========"
echo "=======BACK OUT+======="
mv * ../
cd ..
rm -rf $2
pwd
ls