#!/bin/bash

string="Hello, shell script !"
echo "\${string} = \"${string}\""
echo

echo "offset 5:"
echo "[1;35m\${string:5}[0m = \"${string:5}\""
echo

echo "offset 0, length 6:"
echo "[1;35m\${string:0:6}[0m = \"${string:0:6}\""
echo

echo "offset 7, length 12:"
echo "[1;35m\${string:7:12}[0m = \"${string:7:12}\""
echo

