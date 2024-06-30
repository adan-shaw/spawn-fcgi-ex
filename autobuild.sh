#!/bin/sh

# autobuild.sh will destroy files, to adaptation system platform, please notes!!
# autobuild.sh 执行过程中会调用autogen.sh, autogen.sh 会破坏项目的完整性, 去适配平台差异, 必须先运行autogen.sh 屏蔽平台差异, 才能build;

./autogen.sh

mkdir build

cd build

../configure

make -j4

ln -s ./src/spawn-fcgi

./spawn-fcgi --help
