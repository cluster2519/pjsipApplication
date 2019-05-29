#!/bin/sh

# Account Setting
# ex)
# ./calling.sh 178.128.29.94 101 password 0353211111
#
#registServer="178.128.29.94"
#user="101"
#pass="password"
#tel="0353211111"
registServer=$1
user=$2
pass=$3
tel=$4

echo "Start Calling"

echo connectTo:${registServer}
echo user:${user}
echo tel:${tel}

param="--id=sip:101@${registServer} --registrar=sip:asrterisk@${registServer} --realm=Asterisk --username=${user} --password=${pass} --local-port=23355 sip:${tel}@${registServer}"
echo ${param}
#read -p "Press [Enter] key to resume."

./pjsua-x86_64-unknown-linux-gnu ${param}

echo "Complete!"