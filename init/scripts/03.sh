#!/bin/sh
#while [ 1 ]
#do
reset
echo "
❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️
❤️               \033[4;38m'Sup bro ! Ready to Start ?\033[0m                 ❤️
❤️                                                           ❤️  
❤️     -> Fuck \033[1;37mNO \033[0m! I'm out !                                ❤️
❤️       -> But Bro ... 😔 !                                 ❤️ 
❤️       -> type \033[4;37mno\033[0m                                          ❤️ 
❤️                                                           ❤️ 
❤️     -> \033[1;37mYes ! \033[0m                                             ❤️ 
❤️       -> Great Bro !                                      ❤️  
❤️       -> type \033[4;37msys\033[0m for Systems                             ❤️ 
❤️       -> type \033[4;37mnet\033[0m for Network                             ❤️ 
❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️"

read which

sys="sys";
net="net";
no="no"
system="system";




if [[ $which != $net && $which != $no && $which != $sys ]]
then
echo "bruh ... you need to choose sumtin' !\n
	-> type sys ❤️  net ❤️  or  no 💔"
read which
fi


if [[ $which == $no ]]
then
reset
echo "  😔😔😔😔😔😔😔❤️ ❤️ 😔❤️ ❤️ 😔😔😔😔😔😔😔😔"
echo "  😔😔😔😔😔😔❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ 😔😔😔😔😔😔😔"
echo "  😔😔😔😔😔😔😔❤️ ❤️ ❤️ ❤️ ❤️ 😔😔😔😔😔😔😔😔"
echo "  😔😔😔😔😔😔😔😔❤️ ❤️ ❤️ 😔😔😔😔😔😔😔😔😔"
echo "  😔😔😔😔😔😔😔😔😔❤️ 😔😔😔😔😔😔😔😔😔😔"
exit
fi


if [[ $which == $net ]]
then
echo "let's go for $which then !"
reset

echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(1) \033[0m\033[1;36mGet the list of the network interfaces of the machine without displaying any detail for these interfaces. Only the list of name\033[0m" 



echo "\n\033[4;37mthe command is :\033[0m
ifconfig -l"

echo "\n\033[4;37mthe commands executed is :\033[0m"
ifconfig -l
	
read name
reset

echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"



echo "\033[1;37m(2) \033[0m\033[1;36mIdentify and display the Ethernet interface characteristics:
  (a) Identify broadcast address
  (b) Identify all IP adresses which are part of the same subnet\033[0m"



echo "\n\033[4;37mthe commands are :\033[0m
ifconfig -L en0
(a) ifconfig en0 | grep broadcast | awk '{print \$6}'
(b) arp -a"

echo "\n\033[4;37mthe command executed are :\033[0m"


ifconfig -L en0


echo "\n (a)"
ifconfig en0 | grep broadcast | awk '{print $6}'


echo "\n (b)"
arp -a

read name
reset

#################################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"
echo "\033[1;37m(3) \033[0m\033[1;36mIdentify the MAC address of the Wi-Fi card\033[0m"


echo "\n\033[4;37mthe command is :\033[0m"
echo "ifconfig en1 | grep ether | awk '{print \$2}'"

echo "\n\033[4;37mthe command executed is :\033[0m"
ifconfig en1 | grep ether | awk '{print $2}'
read name
reset

##########################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"
echo "\033[1;37m(4) \033[0m\033[1;36mIdentifiy the default gateway in the routing table\033[0m"


echo "\n\033[4;37mthe command is :\033[0m"
echo "netstat -nr | grep en0 | grep default | awk '{print \$2}'"

echo "\n\033[4;37mthe command executed is :\033[0m"
netstat -nr | grep en0 | grep default | awk '{print $2}'
	
read name
reset

############################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"
echo "\033[1;37m(5) \033[0m\033[1;36mIdentify the IP address of the DNS that responds to the following url: slash16.org\033[0m"


echo "\n\033[4;37mthe command is :\033[0m"
echo "ping -c 1 slash16.org | sed -n '1p' | awk '{print \$3}'| cut -c 2- | rev | cut -c 3- | rev"

echo "\n\033[4;37mthe command executed is :\033[0m"
ping -c 1 slash16.org | sed -n '1p' | awk '{print $3}'| cut -c 2- | rev | cut -c 3- | rev


read name
reset

######################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(6) \033[0m\033[1;32mGet the complete path of the file that contains the IP address of the DNS server
you’re using\033[0m"



echo "\n\033[4;37manswer is :\033[0m"

echo "etc/resolv.conf"


	
read name
reset

###################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"
echo "\033[1;37m(7) \033[0m\033[1;36mQuery an external DNS server on the slash16.org domain name (ie. : google
8.8.8.8)\033[0m" 


echo "\n\033[4;37mthe command is :\033[0m"
echo "nslookup slash16.org 8.8.8.8"

echo "\n\033[4;37mthe command executed is :\033[0m"
nslookup slash16.org 8.8.8.8	

read name
reset

########################################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(8) \033[0m\033[1;32mFind the provider of slash16.org\033[0m"



echo "\n\033[4;37manswer is :\033[0m"
echo "whois slash16.org | grep "Name Server: " | head -4"


read name
reset

###################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(9) \033[0m\033[1;31mFind the external IP of 42.fr\033[0m"



echo "\n\033[4;37mthe command is :\033[0m"
echo "nslookup 42.fr 8.8.8.8"

echo "\n\033[4;37mthe command out is :\033[0m"
echo "Server:		8.8.8.8
Address:	8.8.8.8#53

Non-authoritative answer:
Name:	42.fr
Address: 163.172.250.12  \033[1;31m<--- external IP\033[0m
Name:	42.fr
Address: 163.172.250.13  \033[1;31m<--- external IP\033[0m"

	
read name
reset

######################################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(10) \033[0m\033[1;36mIdentify the network devices between your computer and the slash16.org domain\033[0m"


echo "\n\033[4;37mthe command is :\033[0m
traceroute slash16.org"

echo "\n\033[4;37mthe command executed is :\033[0m"
traceroute -m 10 slash16.org
	
read name
reset

##################################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(11) \033[0m\033[1;32mUse the output of the previous command to find the name and IP address of the
device that makes the link between you (local network) and the outside world\033[0m" 



echo "\n\033[4;37mthe command is :\033[0m
traceroute slash16.org"

echo "\n\033[4;37mhere are the explanations after it is executed:\033[0m"
echo "1  10.113.254.254 (10.113.254.254)  0.693 ms  0.304 ms  0.382 ms
2  192.168.0.2 (192.168.0.2)  0.360 ms  0.323 ms  0.324 ms
3  nat (10.90.1.11)  0.126 ms  0.173 ms  0.194 ms
4  64.62.224.30 (64.62.224.30)  0.836 ms  0.832 ms  0.780 ms

1 : Local IP
2 : Local IP of the router
2 : NAT IP (the NAT router remaps the local IP to a public IP)
4 : Public IP

# le serveur qui fait le lien entre le reseau local et l'exterieur est le serveur NAT
# NAT = Network Address Translation"
	
read name
reset

###############################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(12) \033[0m\033[1;36mFind the IP that was assigned to you by dhcp server\033[0m"



echo "\n\033[4;37mthe command is :\033[0m
ifconfig en0 | grep "inet " | awk '{print \$2}'"

echo "\n\033[4;37mthe command executed is :\033[0m"
ifconfig en0 | grep "inet " | awk '{print $2}'
	
read name
reset

###############################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(13) \033[0m\033[1;31mThanks to the previous question and the reverse DNS find the name of your host\033[0m"


echo "\n\033[4;37mneed to run the following command :\033[0m
hostname"

echo "\n\033[4;37mhere is the result :\033[0m"
hostname
	
read name
reset

################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(14) \033[0m\033[1;32mWhat file contains the local DNS entries?\033[0m"


echo "\n\033[4;37mit is contained in :\033[0m
/etc/hosts"

read name
reset

############################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(15) \033[0m\033[1;32mMake the intra.42.fr address reroute to 46.19.122.85\033[0m" 


echo "\n\033[4;37mwhat you have to do :\033[0m
add the line below at the end of the DNS local entry file located in /etc/hosts
46.19.122.85 intra.42.fr"

	
read name
reset

fi
######################################################
####################################################### SSSSSYYYYYYYSSSSS
#######################################################

if [[ $which == $sys ]]
then
echo "let's go for $which then !"
reset

echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(1) \033[0m\033[1;31mIn what file can you find the installed version of your Debian?\033[0m" 



echo "\n\033[4;37mthe file is :\033[0m
/etc/os-release"

read name
reset
######################################################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"



echo "\033[1;37m(2) \033[0m\033[1;36mWhat command can you use to rename your system?\033[0m"



echo "\n\033[4;37mhere are different methods :\033[0m

# Method 1 (non-permanent) :
hostname the_new_name

# Method 2 (permanent):
#have to install the systemd package before though, with sudo apt install systemd

hostnamectl set-hostname the_new_name

# Method 3 (permanent):
 sudo su
 hostname the_new_name
 vim /etc/hostname
	# replace (if there is) the old name with new name
 vim /etc/hosts
	# replace (if there is) the old name with new name
"

read name
reset

#################################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"
echo "\033[1;37m(3) \033[0m\033[1;31mWhat file has to be modified to make it permanent?\033[0m"

echo "\n\033[4;37mhere are different methods :\033[0m

# Method 1 (non-permanent) :
hostname the_new_name

# Method 2 (permanent):
#have to install the systemd package before though, with sudo apt install systemd

hostnamectl set-hostname the_new_name

# Method 3 (permanent):
 sudo su
 hostname the_new_name
 vim /etc/hostname
	# replace (if there is) the old name with new name
 vim /etc/hosts
	# replace (if there is) the old name with new name
"

read name
reset

##########################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"
echo "\033[1;37m(4) \033[0m\033[1;36mWhat command gives you the time since your system was last booted?\033[0m"


echo "\n\033[4;37mthe command is :\033[0m"
echo "# Time at the moment it was last booted
who -b

# How long the system has been running since last booted
uptime -s"

echo "\n\033[4;37mthe command executed is :\033[0m"
uptime -s
	
read name
reset

############################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"
echo "\033[1;37m(5) \033[0m\033[1;36mName the command that determines the state of the SSH service\033[0m"


echo "\n\033[4;37mthe command (name) is :\033[0m
sudo service sshd status"

read name
reset

######################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(6) \033[0m\033[1;36mName the command that reboots the SSH service\033[0m"



echo "\n\033[4;37mthe answer is :\033[0m"

echo "sudo service sshd restart"


	
read name
reset

###################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"
echo "\033[1;37m(7) \033[0m\033[1;36mFigure out the PID of the SSHD service\033[0m" 


echo "\n\033[4;37mthe commands are :\033[0m"
echo "# open a ssh with a hostname/ip, then

# either
sudo service sshd status | grep pid | awk '{print \$3}' | rev | cut -c 2- | rev

# or
cat /var/run/sshd.pid"


read name
reset

########################################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(8) \033[0m\033[1;31mWhat file contains the RSA keys of systems that are authorized to connect via SSH?\033[0m"



echo "\n\033[4;37mthe answer is :\033[0m"
echo "~/.ssh
# by default it contains 2 keys named id_rsa (private key) and id_rsa.pub (public key)

# otherwise it is contained in
~/.ssh/authorized_keys"


read name
reset

###################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(9) \033[0m\033[1;36mWhat command lets you know who is connected to the System?\033[0m"



echo "\n\033[4;37mthe command is :\033[0m \nw"

	
read name
reset

######################################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(10) \033[0m\033[1;36mName the command that lists the partition tables of drives?\033[0m"


echo "\n\033[4;37mthe command is :\033[0m
sudo fdisk -l"

echo "\n\033[4;37mthe command executed is :\033[0m"
fdisk -l
	
read name
reset

##################################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(11) \033[0m\033[1;36mName the command that displays the available space left and used on the syste in an humanly understandable way\033[0m" 



echo "\n\033[4;37mthe command is :\033[0m
df -h"

echo "\n\033[4;37mthe command executed is:\033[0m"
df -h

read name
reset

###############################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(12) \033[0m\033[1;36mFigure out the exact size of each folder of /var in a humanly understandable way followed by the path of it\033[0m"



echo "\n\033[4;37mthe command is :\033[0m
# h - print sizes in a human-readable format (h)
# d - depth max reach

du -h -d 1 /var"

echo "\n\033[4;37mthe command executed is :\033[0m"
du -h -d 1 /var	

read name
reset

###############################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(13) \033[0m\033[1;36mName the command that find, in real time, currently running processes\033[0m"


echo "\n\033[4;37mthe commands are :\033[0m
top

> or <

ps"

echo "\n\033[4;37mthe command >ps< gives :\033[0m"
ps
	
read name
reset

################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(14) \033[0m\033[1;36mRun the ‘tail -f /var/log/syslog‘ command in background\033[0m"


echo "\n\033[4;37mthe command is:\033[0m
tail -f /var/log/syslog &

# & : run the command in the background"

read name
reset

############################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(15) \033[0m\033[1;36mFind the command that kills the background command’s process\033[0m" 


echo "\n\033[4;37mthe answer is :\033[0m
# if only one process is named name_of_process is running on the background
kill name_of_process

# otherwise, more specifically (use ps to get pid of process)
kill pid_of_process"

	
read name
reset

############################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(16) \033[0m\033[1;31mFind the service which makes it possible to run specific tasks following a regular schedule\033[0m" 


echo "\n\033[4;37mthe answer is :\033[0m
# It allows tasks to be automatically run in the background at regular intervals

cron

crontab -l (to see which one is already set)
crontab -e (to edit the list of cronjobs)

# All is here : https://kvz.io/schedule-tasks-on-linux-using-crontab.html
#
# Example : * * * * * /bin/execute/this/script.sh (execute script every min, every hour, ... = all the time)
#			0,10,20,30,40,50 * * * * /bin/execute/this/script.sh (every 10 min, every hour, ...)
#			0 0 * * 0 /blabla (once a week)
#
# Scheduling explained
# The stars represent different date parts in the following order:
# - minute (from 0 to 59)
# - hour (from 0 to 23)
# - day of month (from 1 to 31)
# - month (from 1 to 12)
# - day of week (from 0 to 6) (0=Sunday)"

	
read name
reset


########################################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(17) \033[0m\033[1;36mFind the command that allows you to connect via ssh on the VM.(In parallel with the graphic session)\033[0m"



echo "\n\033[4;37mthe answer is :\033[0m"
echo "ssh <user>@<ip-address-or-hostname> -p <port>"


read name
reset

###################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(18) \033[0m\033[1;36mFind the command that kills ssh service\033[0m"



echo "\n\033[4;37mthe command is :i\033[0m
# grab the pid of the sshd by using : ps aux | grep sshd

kill <pid_of_ssh>"

	
read name
reset

######################################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(19) \033[0m\033[1;36mList all services which are started at boot time and name this kind of services\033[0m"


echo "\n\033[4;37mthe answer is :\033[0m
# systemctl is the central management utility that controls the systemd system,
# manages the services and examine the system state

systemctl list-unit-files --type=service | grep enabled | awk -F'.service' '{print \$1}'

# -F : field separator
# print \$1 : number of field separator to avoid (here 1)

# they are called Daemon"

echo "\n\033[4;37mthe command executed is :\033[0m"
systemctl list-unit-files --type=service | grep enabled | awk -F'.service' '{print \$1}'
	
read name
reset

##################################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(20) \033[0m\033[1;36mList all existing users on the VM\033[0m" 



echo "\n\033[4;37mthe command is :\033[0m
awk -F':' '{ print \$1}' /etc/passwd"

echo "\n\033[4;37mthe command executed is :\033[0m"
awk -F':' '{ print $1}' /etc/passwd

read name
reset

###############################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(21) \033[0m\033[1;36mList all real users on the VM\033[0m"



echo "\n\033[4;37mthe command is :\033[0m
awk -F : '/home/ {print \$1}' /etc/passwd"

echo "\n\033[4;37mthe command executed is :\033[0m"
awk -F : '/home/ {print $1}' /etc/passwd

read name
reset

###############################
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(22) \033[0m\033[1;36mFind the command that add a new local user\033[0m"


echo "\n\033[4;37mthe commands are :\033[0m
sudo adduser username"

	
read name
reset

################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(23) \033[0m\033[1;31mExplain how connect yourself as new user. (With graphic session and ssh session)\033[0m"


echo "\n\033[4;37mthe answer is:\033[0m
# graphic : put your login and password when asked
# SSH : ssh <user>@<ip> then put password when asked"

read name
reset

############################################3
echo "=================================================="
echo "|| \033[1;36mBLUE : a command\033[0m                             ||"
echo "|| \033[1;32mGREEN : a command output\033[0m                     ||"
echo "|| \033[1;31mRED : a deduction, written in your own words\033[0m ||
==================================================\n\n\n"

echo "\033[1;37m(24) \033[0m\033[1;36mFind the command that list all packages\033[0m" 


echo "\n\033[4;37mthe command is :\033[0m
apt list --installed"

	
echo "\n\033[4;37mthe command executed is :\033[0m"
apt list --installed

read name
reset




fi

echo "=================================================="
echo "||                                              ||"
echo "||                 ❤️  THE END ❤️                 ||"
echo "||                                              ||
=================================================="

#read name
#exit
