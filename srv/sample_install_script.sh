#!/bin/bash
#
# This is a sample install script
#



printc() {
  local color_name="color_$1"
  local fmt="$2"
  shift 2

  if [[ $fmt == *"\n" ]]; then
    fmt="${!color_name}${fmt%\\n}${color_reset}\n"
  else
    fmt="${!color_name}${fmt}${color_reset}"
  fi

  printf "$fmt" "$@"
}

if [ -t 1 ]; then
  color_red=$'\e[31m'
  color_green=$'\e[32m'
  color_yellow=$'\e[1;33m'
  color_bright=$'\e[1;37m'
  color_reset=$'\e[0m'
else
  color_red=""
  color_green=""
  color_yellow=""
  color_bright=""
  color_reset=""
fi

echo "Beginning simulated install..."
printc bright "Acquiring dependencies..."
echo ""

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

printc bright "Now building files"
echo

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

printc bright "Install files in final destination..."
echo
sleep 3

printc green "Install finished!"
echo