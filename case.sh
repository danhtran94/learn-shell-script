#!/usr/local/bin/zsh

echo please talk to me
while : # : mean alway true
do
    read INPUT_STRING
    case $INPUT_STRING in
        hello) echo "hello yourself!"
        ;;
        bye) echo "see you again!"
        break
        ;;
        *) echo "sorry i dont understand"
        ;;
    esac

done
echo
echo "That all!"

