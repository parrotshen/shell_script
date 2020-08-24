#!/bin/bash

filename=/home/parrot/shell/example.tar.gz
echo "[1;36mfilename[0m=$filename"
echo

echo "[1;33mbasename[0m [1;35m\$filename[0m"
echo $(basename $filename)
echo

echo "[1;33mbasename[0m [1;35m\$filename[0m .tar.gz"
echo $(basename $filename .tar.gz)
echo

echo "[1;35m\${filename[1;33m%%[0m.*[1;35m}[0m"
echo ${filename%%.*}
echo

echo "[1;35m\${filename[1;33m%[0m.*[1;35m}[0m"
echo ${filename%.*}
echo

echo "[1;35m\${filename[1;33m#[0m*.[1;35m}[0m"
echo ${filename#*.}
echo

echo "[1;35m\${filename[1;33m##[0m*.[1;35m}[0m"
echo ${filename##*.}
echo

