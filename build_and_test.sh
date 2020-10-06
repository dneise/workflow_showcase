#!/bin/bash
set -e
pip3.6 install --quiet --user pytest

cp -r /test $HOME
ls $HOME
echo
ls $HOME/test

export INTROOT=$HOME/test/INTROOT
getTemplateForDirectory INTROOT $INTROOT
source $HOME/.bashrc
export ACS_CDB=$HOME/test/example/config
env
echo
echo
env | grep -i CDB

cd $HOME/test/example
rm -rf ./lib
rm -rf ./object

cd $HOME/test/example/src
make all install

acsStart
acsStartContainer -py aragornContainer &

cd $HOME/test/example
python3.6 -m pytest --verbose -x -s ./test_it.py
