#!/bin/bash

if [ $# == 0 ]; then
  echo "Usage: $0 FILE_NAME"
  echo
  exit
fi

target="$1"

while true
do
  read -p "Are you sure to delete [1;31m$target[0m ? [y/n]" answer
  case $answer in
    [Yy]*)
      #echo "rm $target"
      find . -name "$target" -print0 | xargs -0 -t rm -rf
      break
      ;;
    [Nn]*)
      exit
      ;;
    *)
      ;;
  esac
done

