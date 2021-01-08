#! /bin/bash

number=0
curr=0
next=1

if [ $# -gt 2 ]; then
    number=$1
    curr=$2
    next=$3
elif [ $# -gt 0 ]; then
    number=$1
else
    echo "Usage: fibonacci.sh NUMBER"
    echo ""
    exit 0
fi

if [ $number -gt 0 ]
then
   ./fibonacci.sh $[ $number-1 ] $next $[ $curr+$next ]
fi
echo $curr
exit $curr
