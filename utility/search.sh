#!/bin/bash

if [ $# == 0 ]; then
  echo "Usage: $0 <key_word>"
  echo "     : $0 <key_word> <search_path>"
  echo ""
  exit
fi


dir=.
if [ $# == 2 ]; then
  dir=$2
fi

echo "--------------------------------------------------------------------------------"
echo "Processing ..."
echo ""

#list=`egrep -rwl $1 $dir | egrep "\.(c|h|cpp)$"`
list=`grep -rwl "$1" $dir | grep "\.\(c\|C\|h\|H\|cpp\|s\|S\|java\|v\|m\)$"`

for x in $list
do
  echo "[30;47m$x[0m"
  grep --color -wn "$1" $x
  echo ""
done

echo "--------------------------------------------------------------------------------"
