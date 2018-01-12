#!/usr/local/bin/zsh

if test "danh" = "danh"
then
    echo "true"
else
    echo "false"
fi

if [ "danh" = "d" ]
then
    echo "true"
else
    echo "false"
fi

if test 1 -eq 2; then # 1 == 2 -> false
    echo "true"
elif test 1 -eq 1; then
    echo "false"
fi

test 5 -eq 5 && \
    echo "5 absolute equal 5"

[ "a" = "a" ] && \
    echo "a absolute equal a"

false && echo "true" || echo "false" #  The && and || commands give code to run if the result is true, or false, respectively
! false && echo "true" || echo "false" #  ! reverse true -> false, false -> true
