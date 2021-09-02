#!/bin/bash

func_add()
{
    return $(expr $1 + $2)
}

[ -z $1 ] && A=0 || A=$1
[ -z $2 ] && B=0 || B=$2

func_add $A $B
SUM=$?

echo "$A + $B = $SUM"
