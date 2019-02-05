#! /bin/bash
#This script outputs the IP address and Hostname of the machine
echo 'This is a script. Hello!'
echo Machine Name: $MACHTYPE
echo Hostname: $HOSTNAME
echo Working Directory: $PWD
echo Session Length: $SECONDS
echo Home Directory: $HOME
a=$(ip a | grep 'dynamic ens192' | awk '{print $2}')
echo "My IP is $a"
