#!/bin/bash

loop=10
if [ $# -gt 0 ]; then
   loop=$1
fi

while [ $loop -gt 0 ]
do
   echo $loop


   let loop=$loop-1
done
