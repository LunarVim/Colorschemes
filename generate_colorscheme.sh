#!/bin/sh

python ez.py templates/"$1".yml

rm -rf ./lua/"$1"
mv ./"$1"/lua/"$1" ./lua
mv ./"$1"/colors/"$1".vim ./colors
rm -rf "$1"
