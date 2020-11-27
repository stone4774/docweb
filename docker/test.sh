#!/bin/bash

TARGET="https://github.com/peachdocs/docs.git"
USERNAME=""
PASSWORD=""

docker rm -f docweb
docker run --name=docweb -it -d -e PEACH_TARGET=$TARGET -e GIT_USERNAME=$USERNAME -e GIT_PASSWORD=$PASSWORD -p 0.0.0.0:5566:5555 docweb
