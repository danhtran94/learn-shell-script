#!/usr/local/bin/zsh

get_user_name(); {
    USER=$1
    MYNAME=`grep "^$USER:" /etc/passwd | cut -d: -f5`
    if [ "$MYNAME" = "" ]
    then
        echo fail: user not avail !
        return 1 # just posible return exit code
    else
        echo $MYNAME
        GETTED=$MYNAME
        return 0 # just posible return exit code
    fi
}

echo
echo calling function
EXTEND=`get_user_name root` # call in sub shell, calling with pipeline | also open sub shell
ERR=$?
if test $ERR -eq 1; then
    echo script has error
fi
echo "return value:" ${GETTED:="not set"}
echo "return value in sub-shell:" $EXTEND
echo end calling

echo
echo calling function
get_user_name FAKE_USER_NAME # call direct
ERR=$? # check error with exit code
if test $ERR -eq 1; then
    echo script has error
fi
echo "return value:" ${GETTED:="not set"}
echo end calling

echo
echo calling function
get_user_name root
ERR=$?
if test $ERR -eq 1; then
    echo script has error
fi
echo "return value:" ${GETTED:="not set"}
echo end calling

