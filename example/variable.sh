#!/bin/bash

#
# $@ ==> "$1" "$"2 "$3" ...
# $* ==> "$1 $2 $3 ..."
#

echo "PID of the current shell:"
echo "[1;35m\$$[0m = $$"
echo

echo "The name of the current shell script:"
echo "[1;35m\$0[0m = $0"
echo

for var in "$@"
do
  let i=i+1
  echo "Argument #$i:"
  echo "[1;35m\$$i[0m = $var"
  echo
done

echo "The number of command line arguments:"
echo "[1;35m\$#[0m = $#"
echo

echo "All arguments on command line:"
echo "[1;35m\$*[0m = $*"
echo

echo "The exit status of last executed command:"
echo "[1;35m\$?[0m = $?"
echo

echo "The last argument of the previous command:"
echo "[1;35m\$_[0m = $_"
echo

echo "PID of the last background command:"
echo "[1;35m\$![0m = $!"
echo

echo "Current option flags of the shell:"
echo "[1;35m\$-[0m = $-"
echo

