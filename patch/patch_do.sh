#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 PATCH_FILE..."
  echo
  exit
fi

for file in "$@"
do
  patch -p0 < ${file}
done