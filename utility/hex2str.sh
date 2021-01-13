#!/bin/bash

if [ $# == 0 ]; then
  echo "Usage: $0 <HEX>"
  echo
  exit
fi

for hex in $*
do
  echo -n -e "\x$hex"
done
echo
