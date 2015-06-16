#!/bin/sh

echo -n "setup-x86_64.exe -P " > cygwin_installer.bat

cygcheck -c -d | sed -e "1,2d" -e 's/ .*$//' | awk 'NR==1{printf $1}{printf ",%s", $1}' >> cygwin_installer.bat
