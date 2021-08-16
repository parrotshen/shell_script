#!/bin/bash

array=("Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday")
n=${#array[*]}

echo "Number of array elements:"
echo "[1;35m\${#array[*]}[0m = $n"
echo

echo "All array elements:"
echo "[1;35m\${array[*]}[0m = ${array[*]}"
echo

echo "Array element by index:"
i=0
while [ $i -lt $n ]
do
  echo "[1;35m\${array[$i]}[0m = ${array[$i]}"
  let i=i+1
done
echo

