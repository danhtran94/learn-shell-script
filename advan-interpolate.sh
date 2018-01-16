#!/usr/local/bin/zsh

# `some_command` backticks runs command in a subshell
echo "What is your name [ `whoami` ]\c"
read myname
# By using curly braces and the special ":-" usage, you can specify a default value to use if the variable is unset
echo "Your name is : ${myname:-`whoami`}"
# There is another syntax, ":=", which sets the variable to the default if it is undefined:
echo "Your name is : ${undifined_var:="Danh Tran"}"
