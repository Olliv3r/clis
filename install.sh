#!/bin/sh
#
#
echo 'Installing dependencies...'

apt update ; apt upgrade ; apt install toilet util-linux figlet

echo "\033[01;91m./shell.sh"
