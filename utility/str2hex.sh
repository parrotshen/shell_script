#!/bin/bash

if [ $# == 0 ]; then
  echo "Usage: $0 <STRING>"
  echo
  exit
fi

echo -n "$*" | od -t xCc
