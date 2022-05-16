#!/bin/bash
wall "#Architecture: $(uname -srvmo) 
#CPU physical: $(getconf _NPROCESSORS_ONLN) 
#VCPU: $(grep processor /proc/cpuinfo | wc -l)
#Memory Usage : $(free -m | awk NR==2'{printf" %d/%d (%.2f%%)", $3, $2, $3/$2*100}')
#Disk Usage : $(df -h | grep ^/ | awk NR==1'{printf"%.1f/%.1fG (%s)", $3, $2, $5}')
#CPU Load : $(top -bn1 | grep load | awk '{printf"%.2f%%",$(NF -2)}')
#Last Boot: $(who -b | awk '{printf"%s %s",$3,$4}') 
#User Log : $(who | wc -l) 
#Network: $(hostname -I) $(ip addr | grep link/ether --max-count 1 | awk '{print $2}') 
#LVM enable : $(lsblk | grep lvm | awk '{if ($1) {printf "yes";exit;} else {print "no"}}') 
#Connections TCP : $(netstat | grep ^tcp | wc -l)
#Sudo : $(grep sudo /var/log/sudo.log | wc -l)"
