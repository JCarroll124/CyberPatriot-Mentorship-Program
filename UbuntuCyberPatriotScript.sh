#!/bin/bash
##bash can be substituted for sh##
sudo apt update
sudo apt upgrade -y
echo "Shireal is mean"
echo "-----------"
cat /etc/group
echo
echo "list of sudo users"
getent group sudo
echo
echo "Processes"
ps aux
echo
echo  "Insert User to see processes running by that User"
read username
ps -u $username

##echo "Insert FileName"
##read filename
##echo "Insert File Extension"
##read fileExtension


##Looks for .png files DNF
echo
find / -type f -name "*.png"
