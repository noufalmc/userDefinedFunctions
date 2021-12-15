#!/bin/bash
echo "Enter 1 Celcius to Farenheat
      2 For Faren heat to Celcius"
read con;
echo $con;
function cf()
{
  if(($2=='c'))
  then
  degF=$((($1*9/5)+32))
  echo "Farenheat is" $degF;
  else
  degC=$((($1-32)*5/9))
  echo "Celcius is" $degC;
  fi
}
case $con in
             1)
              echo "Enter Celcius"
              read c;
              cf $c 'c'
                ;;
            2)
            echo "Enter Farenheat"
              read c;
              cf $c 'f'
            ;;
            *)
            echo "Invalid Choice"
               ;;
esac                