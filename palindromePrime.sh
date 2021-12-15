#!/bin/bash
function isprime()
{
    num=$1;
    prime=0;
    for((i=2;$i<=$num/2;i++))   
    do
    if(($num%$i==0))
    then
        prime=1;
        break;
    fi
    done
    if(($prime==0))
    then
        echo "given number $1 is prime"
    else
        echo "Given number $1 is not a prime"
    fi
}
function ispalindrome()
{
    num=$1;
   rev=0;
   while(( $num > 0 ))
   do
   rem=$(($num%10))
   num=$(($num/10))
   rev=$((($rev*10)+$rem))   
   done
   echo $rev
}

echo "Enter a number"
read a;
isprime $a;
value=$(ispalindrome $a);
if(($value==$a))
then
    echo "Given Number  $a  palindrome"
else
       echo "Given Number  $a is not palindrome"
fi
isprime $value;