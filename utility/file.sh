#!/bin/bash

if [ $# == 0 ]; then
  echo "Usage: $0 <file_name>"
  echo "     : $0 <file_name> <search_path>"
  echo ""
  exit
fi


dir=.
if [ $# == 2 ]; then
  dir=$2
fi

result=$(find $dir -name "$1" -print)

if [ "$result" = "" ]; then
  echo "Nothing ..."
else
  echo "[1;31m$result[0m"
fi

echo ""
