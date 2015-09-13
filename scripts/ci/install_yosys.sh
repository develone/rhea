#!/bin/sh
set -e
# check to see if yosys folder is empty
if [ ! -d "$HOME/yosys/" ]; then
  git clone https://github.com/cliffordwolf/yosys.git
  cd yosys
  make config-clang
  make
  make test
  make install
  cd ..
else
  echo 'Using cached directory.';
fi
