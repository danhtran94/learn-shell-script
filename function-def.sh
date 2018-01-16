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
