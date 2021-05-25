#!/bin/bash

echo "Your OS type is `uname -o`"
echo "Your OS name is `cat /etc/os-release | grep -E '^NAME' | sed 's/NAME=//'`"
echo "Your kernel version is `uname -a | awk '{print $3}'`"
echo "Your ip address is `wget -qO- eth0.me`"
echo "Your system is working for `uptime | awk '{print $3 " " $4}'`"
echo "You have `free -h | grep Mem | awk '{print $4/$2 * 100}'`% free memory"
echo -e "Users are loged in the system: \n`who | awk '{print $1}'`"
