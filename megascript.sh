#!/bin/sh

echo "Who are the users allowed to use this computer?"
read users

echo "Who should be allowed to use root?"
echo $users
read rootusers

startFun()
{
	clear

	permFun
}

## Checking root users

echo "`getent group wheel`" > sudoers.txt

echo "`getent group wheel`" > wheelers.txt

## Check for sus Packages

echo "`dpkg --get-selections | grep 'john\|telnetd\|logkeys\|Hydra\|hydra\|fakeroot\|nmap\|Crack\|crack\|medusa\|nikto\|tightvnc'`" > ./sus.txt

## Enable firewalls

ufw enable

permFun() {
 chmod 644 /etc/group
 chmod 640 /etc/gshadow
 chmod 644 /etc/hosts
 chmod 644 /etc/passwd
 chmod 640 /etc/shadow
 chmod 644 /etc/sudo.conf
 chmod 440 /etc/sudoers
 chmod 754 /etc/sudoers.d	
}

startFun
