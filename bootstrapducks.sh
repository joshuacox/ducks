#!/bin/sh
TMP_DIR=$(mktemp -d --suffix='.ducks')

cd $TMP_DIR
git clone --depth=1 https://github.com/joshuacox/ducks.git
cd ducks
git pull
sudo make install
cd
rm -Rf $TMP_DIR
