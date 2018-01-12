#!/usr/local/bin/zsh

X=0
# [ -f "$X" ] && \
#       echo "X is the path of a real file" || \
#       echo "No such file: $X"
# [ -x "$X" ] && \
#       echo "X is the path of an executable file"
# [ "$X" -nt "/etc/passwd" ] && \
#       echo "X is a file which is newer than /etc/passwd"
while [ -n "$X" ] # -n string     True if the length of string is nonzero.
do
  echo "Enter some text (RETURN to quit)"
  read X
  if [ -n "$X" ]; then
    echo "You said: $X"
  fi
done
