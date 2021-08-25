#! /bin/bash
# Collatz conjecture

echo "Please input a positive number: "
read input
echo

if [ $input -le 0 ]; then
    echo "invalid number"
    exit
fi

count=0
while [ "$input" != "1" ]
do
   let count=${count}+1
   let check=${input}%2
   if [ "$check" == "0" ]; then
       # even: n = n / 2
       let input=${input}/2
   else
       # odd: n = (3 * n) + 1
       let input=${input}*3+1
   fi
   echo -n "$input "
done
echo
echo "... $count iterations"
