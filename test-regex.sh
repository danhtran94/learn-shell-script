#!/usr/local/bin/zsh

echo -en "Please guess the magic number: "
read X

# >/dev/null 2>&1 directs any output or errors to the special "null" device, instead of going to the user's screen.
# 2 refers to the second file descriptor of the process, i.e. stderr.

# > means redirection.

# &1 means the target of the redirection should be the same location as the first file descriptor, i.e. stdout.

# So this command first redirects stdout to /dev/null and then redirects stderr there as well. This effectively silences all output (regular or error) from the wget command.
echo $X | grep "[^0-9]" > /dev/null 2>&1

# $? This contains the exit value of the last run command.
if [ "$?" -eq "0" ]; then
  # If the grep found something other than 0-9
  # then it's not an integer.
  echo "Sorry, wanted a number"
else
  # The grep found only 0-9, so it's an integer.
  # We can safely do a test on it.
  if [ "$X" -eq "7" ]; then
    echo "You entered the magic number!"
  fi
fi
