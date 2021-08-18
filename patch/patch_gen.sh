#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 OLD_DIR NEW_DIR"
  echo
  exit
fi

old=$1
new=$2

diff -Naur ${old} ${new} > ${old}.patch
