#!/bin/sh

set -e
pwd
echo $1
echo $2
sh -c "protoc $*"