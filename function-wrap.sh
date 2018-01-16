#!/usr/local/bin/zsh

. ./function-def.sh

echo
echo calling function
get_user_name root
ERR=$?
if test $ERR -eq 1; then
    echo script has error
fi
echo "return value:" ${GETTED:="not set"}
echo end calling
