#!/usr/local/bin/zsh

# IFS. This is the Internal Field Separator. The default value is SPACE TAB NEWLINE, but if you are changing it, it's easier to take a copy,
old_IFS="$IFS"
IFS=:
echo "Please input some data separated by colons ..."
read x y z
IFS=$old_IFS
echo "x is $x y is $y z is $z"
