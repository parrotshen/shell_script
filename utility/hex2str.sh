#!/bin/bash

if [ $# == 0 ]; then
  echo "Usage: $0 <HEX>"
  echo
  exit
fi

for hex in $*
do
  dec=$(printf "%u" "0x$hex")
  if [ $dec -ge 32 ] && [ $dec -le 126 ]; then
    echo -n -e "\x$hex"
  else
    echo -n -e "\x20"
  fi
done
echo
