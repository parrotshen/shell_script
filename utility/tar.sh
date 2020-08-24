#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $0 <output_file> <input_file(s)...>"
  echo ""
  exit
fi

fileout=$1
filein=
shift

until [ $# -eq 0 ]
do
  filein="$filein $1"
  shift
done


ext=${fileout##*.}

case $ext in
  gz)
    tar czvf $fileout $filein
    ;;
  bz2)
    tar cjvf $fileout $filein
    ;;
  xz)
    tar cJvf $fileout $filein
    ;;
  Z)
    tar cZvf $fileout $filein
    ;;
  *)
    echo "ERR: unknown file extension .$ext"
    ;;
esac

