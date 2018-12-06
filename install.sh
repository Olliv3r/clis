#!/bin/sh
#
#
echo 'Installing dependencies...'

apt update ; apt upgrade ; apt install toilet util-linux figlet

echo "\033[003;91m./a-shell.sh"
