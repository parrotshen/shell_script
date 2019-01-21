#!/bin/bash

dir=.
if [ $# == 1 ]; then
  dir=$1
fi

echo "List the size of .o file(s):"
echo ""

list=`find $dir -regex ".*\.o"`

for x in $list
do
  size $x
  echo ""
done

