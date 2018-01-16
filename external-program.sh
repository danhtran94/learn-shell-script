#!/usr/local/bin/zsh

# The backtick is used to indicate that the enclosed text is to be executed as a command
# backtick simply catches the standard output from any command or set of commands we choose to run
MYNAME=`grep "^root:" /etc/passwd | cut -d: -f5`
echo $MYNAME
