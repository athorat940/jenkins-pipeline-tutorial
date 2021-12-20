#!/bin/bash

SPOTS=6   # Modulo 6 gives range 0 - 5.
          # Incrementing by 1 gives desired range of 1 - 6.
          # Thanks, Paulo Marcel Coelho Aragao, for the simplification.
die1=0
die2=0
# Would it be better to just set SPOTS=7 and not add 1? Why or why not?

# Tosses each die separately, and so gives correct odds.

    let "die1 = $RANDOM % $SPOTS +1" # Roll first one.
    let "die2 = $RANDOM % $SPOTS +1" # Roll second one.
    #  Which arithmetic operation, above, has greater precedence --
    #+ modulo (%) or addition (+)?


let "throw = $die1 + $die2"
echo "Throw of the dice = $throw"
echo

if [ "$throw" == '3' ]
then
    echo "pwd"
    sh create_issue.sh
    echo "Pipeline will fail"
    docker --version
    exit 1
elif [ "$throw" == '6' ] 
then
    echo "pwd"
    sh create_issue.sh
    echo "Pipeline will fail"
    docker --version
    exit 1
elif [ "$throw" == '9' ] 
then
    echo "pwd"
    sh create_issue.sh
    echo "Pipeline will fail"
    docker --version
    exit 1
else
    echo "PASS"

fi

exit 0
