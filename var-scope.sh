#!/usr/local/bin/zsh

MYVAR="predefined"
./var2.sh # but it not pass to var2.sh

export MYVAR # export the variable for it to be inherited by another program
./var2.sh
echo $MYVAR # how we get back changed MYVAR value from var2.sh script ?

. ./var2.sh # source via (dot) command
echo "GET BACK: $MYVAR"
