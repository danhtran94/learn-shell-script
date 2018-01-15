#!/usr/local/bin/zsh

file ~/.zshrc
#  $?. This contains the exit value of the last run command.
if test "$?" -eq "0"; then
    echo "thực thi câu lệnh file ~/.zshrcccccc thành công: exit code $?"
fi
