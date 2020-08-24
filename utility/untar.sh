#!/bin/bash

if [ $# == 0 ]; then
  echo "Usage: $0 <input_file>"
  echo "     : $0 <input_file> <output_dir>"
  echo ""
  exit
fi

filein=$1
dirname=.
if [ $# == 2 ]; then
  dirname=$2
fi


ext=${filein##*.}

case $ext in
  gz)
    tar xzvf $filein -C $dirname
    ;;
  bz2)
    tar xjvf $filein -C $dirname
    ;;
  xz)
    tar xJvf $filein -C $dirname
    ;;
  Z)
    tar xZvf $filein -C $dirname
    ;;
  *)
    echo "ERR: unknown file extension .$ext"
    ;;
esac

