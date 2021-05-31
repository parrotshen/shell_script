#!/bin/bash

clear

# turn on debug mode
set -x

echo
for name in *
do
   file $name
done
echo

# turn off debug mode
set +x

ls -l
