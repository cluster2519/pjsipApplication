#!/bin/sh

# Account Setting
user="101"
pass="######"
RegistServer="178.128.29.94"

echo "Start Calling"

#echo -n RegistServer:
#read RegistServer
echo Connect To:${RegistServer}

param="--id=sip:101@${RegistServer} --registrar=sip:asrterisk@${RegistServer} --realm=Asterisk --username=${user} --password=${pass} --local-port=23355"
echo ${param}
read -p "Press [Enter] key to resume."

./pjsua-x86_64-unknown-linux-gnu ${param}

#m
#sip:0353211111@178.128.29.94

echo "Complete!"