#!/bin/bash

dir=$(ls -d */)

echo "Show the size of each directory:"
echo
#du -h --max-depth=1 $dir
du -hs $dir
du -hs .
echo
