#!/bin/bash
set -e
pip3.6 install --quiet --user pytest

mkdir $HOME/test_in_home
cp -r /test $HOME/test_in_home
ls $HOME/test_in_home

export INTROOT=$HOME/test_in_home/INTROOT
getTemplateForDirectory INTROOT $INTROOT
source $HOME/.bashrc
export ACS_CDB=$HOME/test_in_home/example/config
env
echo
echo
env | grep -i CDB

cd $HOME/test_in_home/example
rm -rf ./lib
rm -rf ./object

cd $HOME/test_in_home/example/src
make all install

acsStart
acsStartContainer -py aragornContainer &

cd $HOME/test_in_home/example
python3.6 -m pytest --verbose -x -s ./test_it.py
