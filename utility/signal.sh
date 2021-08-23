#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 SIGNAL PID"
  echo
  kill -l
  echo
  exit
fi

signal=$1
pid=$2

kill -s $1 $2
