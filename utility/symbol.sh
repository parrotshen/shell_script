#!/bin/bash

if [ $# == 0 ]; then
  echo "Usage: $0 <symbol_name>"
  echo "     : $0 <symbol_name> <search_path>"
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

list=`find $dir -regex ".*\.o" -or -regex ".*\.a" -or -regex ".*\.sa" -or -regex ".*\.so" -or -regex ".*\.ko"`

for x in $list
do
  nm -A $x 2> /dev/null | grep --color -w $1
done

echo "--------------------------------------------------------------------------------"
