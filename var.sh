#!/usr/local/bin/zsh
MY_MESSAGE="Hello World"
MY_MESSAGE_WRONG = "WRONG!" # This case MY_MESSAGE_WRONG is command name = and "WRONG!" are arguments
WRONG2=Hello Wrong # Wrong command will execution
echo $MY_MESSAGE $MY_MESSAGE_WRONG

x="hello" # string
expr $x + 1 # fail because expr expect number arg
echo $x
