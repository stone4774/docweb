#!/bin/bash

#构建custom文件夹
rm -rf ./docweb/custom
mkdir ./docweb/custom
cp ../peach.peach/app.ini ./docweb/custom/
cp -r ../peach.peach/templates ./docweb/custom/
cp -r ../peach/public ./docweb/custom/


#编译peach并copy到docweb目录
cd ../peach
./build.sh
cp peach ../docker/docweb/
cd ../docker

docker build . -t docweb
