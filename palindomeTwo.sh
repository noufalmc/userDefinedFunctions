#!/bin/bash
echo "Enter first Number"
read a;
echo "Enter Second number"
read b;
function palindrome()
{
   num=$1;
   rev=0;
   while(( $num > 0 ))
   do
   rem=$(($num%10))
   num=$(($num/10))
   rev=$((($rev*10)+$rem))   
   done
   if(($1==$rev))
   then
       echo "Given Number is $1 palindrome"
    else
               echo "Given Number is $1 not palindrome"
   fi
}
palindrome $a;
palindrome $b;