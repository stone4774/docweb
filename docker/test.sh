#!/bin/bash

TARGET="https://github.com/peachdocs/docs.git"
USERNAME=""
PASSWORD=""

docker rm -f webdoc
docker run --name=webdoc -it -d -e PEACH_TARGET=$TARGET -e GIT_USERNAME=$USERNAME -e GIT_PASSWORD=$PASSWORD -p 0.0.0.0:5566:5555 peach
