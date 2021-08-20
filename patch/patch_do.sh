#!/bin/bash

if [ $# -gt 1 ]; then
  input=$1
  num=$2
elif [ $# -gt 0 ]; then
  input=$1
  num=0
else
  echo "Usage: $0 PATCH_FILE [STRIP_NUM]"
  echo
  exit
fi

patch -p${num} < ${input}
