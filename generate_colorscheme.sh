#!/bin/sh

python ez.py templates/"$1".yml

rm -rf ./lua/"$1"
mv ./"$1"/lua/"$1" ./lua
rm -rf "$1"
