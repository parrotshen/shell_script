#! /bin/bash
# 6147.sh

echo "Please input a number with length=4: "
read input
echo ""

final=0
while [ $final -ne $input ]
do
   final=$input

   digit4=$[ $input/1000 ]
   digit3=$[ $input/100%10 ]
   digit2=$[ $input/10%10 ]
   digit1=$[ $input%10 ]

   # Begin - Do ascending/descending sort
   for i in 1 2 3 4
   do
      for j in 3 2 1
      do
         case $j
         in
            1)
               if [ $digit2 -gt $digit1 ]
               then
                  temp=$digit1
                  digit1=$digit2
                  digit2=$temp
               fi
               ;;
            2)
               if [ $digit3 -gt $digit2 ]
               then
                  temp=$digit2
                  digit2=$digit3
                  digit3=$temp
               fi
               ;;
            3)
               if [ $digit4 -gt $digit3 ]
               then
                  temp=$digit3
                  digit3=$digit4
                  digit4=$temp
               fi
               ;;
         esac
      done
   done
   # End   - Do ascending/descending sort

   number1=$[ $digit1*1000+$digit2*100+$digit3*10+$digit4 ]
   number2=$[ $digit4*1000+$digit3*100+$digit2*10+$digit1 ]
   echo "$number1 : $number2"

   # input = |number1 - number2|
   if [ $number1 -gt $number2 ]
   then
      input=$[ $number1-$number2 ]
   else
      input=$[ $number2-$number1 ]
   fi
done
echo ""
echo $final
