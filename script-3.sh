#!/bin/bash
set -x
hostname=$(hostname)
nproc=$(nproc)
tmemory=$(free -h -t | grep Total: | awk '{ print $2 }')
tdisk=$(fdisk -l | grep Disk | grep /dev/sda | awk '{ print $3 " " $4 }' | sed 's/,//') 
cat <<EOF > server-info.txt
Hostname: $hostname
Number of CPU cores: $nproc
Total memory: $tmemory
Total disk size: $tdisk
EOF
