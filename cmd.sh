#!/bin/bash
essid=`iwconfig wlan0 |grep "ESSID:" | awk -F":" '{ print $2 }' | cut -f1 -d" "`
local_ip=`/sbin/ifconfig wlan0 | awk '/inet/ {print $2}' | cut -f2 -d ":" |awk 'NR==1 {print $1}'`
hostname=`hostname`
curl -X POST -d "ip=${local_ip}&hostname=${hostname}&essid=${essid}" "https://api.leastai.com/api/v1/pi"
