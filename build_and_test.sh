#!/bin/bash
set -e
pip3.6 install --quiet --user pytest

export INTROOT=/test/INTROOT
getTemplateForDirectory INTROOT $INTROOT
source ~/.bashrc
export ACS_CDB=/test/example/config
env
echo
echo
env | grep -i CDB

cd /test/example
rm -rf ./lib
rm -rf ./object

cd /test/example/src
make all install

acsStart
acsStartContainer -py aragornContainer &

cd /test/example
python3.6 -m pytest --verbose -x -s ./test_it.py
