#!/bin/sh

if [ $# != 1 ]; then
   echo "Usage: $0 LIST_FILE"
   echo ""
   exit
fi

list=$(cat $1 | tr -d '\r')
item=

echo "List before filter:"
echo "$list"

for x in $list
do
   #echo "'$x'"
   #echo ":0:1 ... ${x:0:1}"
   #echo ":1:1 ... ${x:1:1}"

   if [ ${x:0:1} != "#" ]; then
      #echo "$x"
      item="$item $x"
   fi
done

echo ""

echo "List after filter:"
echo "\"$item\""
echo ""
