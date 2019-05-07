#!/bin/bash

filename=list.txt

pattern="a."
echo "grep \"[1;36m$pattern[0m\" $filename"
echo ""
grep --color $pattern $filename
echo ""
echo ""

pattern="[K-Tk-t]"
echo "grep \"[1;36m$pattern[0m\" $filename"
echo ""
grep --color $pattern $filename
echo ""
echo ""

pattern=" \\+$"
echo "grep \"[1;36m$pattern[0m\" $filename"
echo ""
grep --color " \+$" $filename
echo ""
echo ""

pattern="^[XYZ]"
echo "grep \"[1;36m$pattern[0m\" $filename"
echo ""
grep --color $pattern $filename
echo ""
echo ""

