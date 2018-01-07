#!/usr/local/bin/zsh

while read f
do
    case $f in
        "hello") echo "English";;
        "xin chao") echo "Viet Name";;
        *) echo "unknown" $f;;
    esac
done < ./langfile

