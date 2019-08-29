#!/bin/bash

# This echoes a color codes to the terminal to demonstrate the color
# theme. Each row is a different foreground color, out of 17 (default
# and 16 escapes), followed by a test use of that color on all nine
# background colors (default and 8 escapes).

# Borrowed from https://github.com/lysyi3m/macos-terminal-themes

text='gYw' # The test text

echo -e "\n            \
     40m     41m     42m     43m\
     44m     45m     46m     47m"

for label in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
           '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
           '  36m' '1;36m' '  37m' '1;37m'; do
  fg=${label// /}
  echo -en " $label \033[$fg  $text  "
  for bg in 40m 41m 42m 43m 44m 45m 46m 47m; do
    echo -en " \033[$fg\033[$bg  $text  \033[0m"
  done
  echo
done
echo
