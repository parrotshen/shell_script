#! /bin/bash
# Calculate n factorial (n!)

if [ $# -eq 0 ]; then
    echo "Usage: factorial.sh NUMBER"
    echo ""
    exit 0
fi

ret=1
if [ $1 -gt 0 ]
then
   ./factorial.sh $[ $1-1 ]
   let ret=$[ $1*$? ]
fi
echo $ret
exit $ret
