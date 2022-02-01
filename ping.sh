#!/bin/bash
for ip in `seq 1 254`
do
    ping -c 1 192.168.43.$ip > /dev/null
    if [ $? -eq 0 ];then
        echo "$HOSTNAME 192.168.2.$ip UP"
    else
        echo 192.168.43.$ip DOWN
     fi
