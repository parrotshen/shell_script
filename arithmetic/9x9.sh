#!/bin/sh

for i in {2..9};
do
   for j in {1..9};
   do
      let k=${i}*${j}
      echo " $i x $j = $k"
   done
   echo ""
done

