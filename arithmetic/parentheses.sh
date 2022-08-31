#! /bin/bash

A=$((22 + 11))
echo "A=\$((22 + 11))"
echo "\$A -> $A"
echo

A=$((22 - 11))
echo "A=\$((22 - 11))"
echo "\$A -> $A"
echo

A=$((22 * 11))
echo "A=\$((22 * 11))"
echo "\$A -> $A"
echo

A=$((22 / 11))
echo "A=\$((22 / 11))"
echo "\$A -> $A"
echo

A=$((22 % 11))
echo "A=\$((22 % 11))"
echo "\$A -> $A"
echo

A=$((22 ** 11))
echo "A=\$((22 ** 11))"
echo "\$A -> $A"
echo

((A += 3))
echo "((A += 3))"
echo "\$A -> $A"
echo

((A -= 3))
echo "((A -= 3))"
echo "\$A -> $A"
echo

A=$((22 & 11))
echo "A=\$((22 & 11))"
echo "\$A -> $A"
echo

A=$((22 | 11))
echo "A=\$((22 | 11))"
echo "\$A -> $A"
echo

A=$((22 ^ 11))
echo "A=\$((22 ^ 11))"
echo "\$A -> $A"
echo

B=$((~A))
echo "B=\$((~A))"
echo "\$B -> $B"
echo
