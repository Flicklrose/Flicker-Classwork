#!/bin/bash
#This script will email us our user IP, hostname, date time, and the version of bash
emailaddress="flicker@mail.uc.edu"
ip=$(ip a | grep 'dynamic ens192' | awk '{print $2}')
#date=$date +"%d-%m-%Y"
#time=$date +"%H:%M:%S"
printf -v content "User Name:\t%s\n IP:\t%s\n  Bash Version:\t%s\n Server Name: \t%s\n" $USER $ip $BASH_VERSION $HOSTNAME #$date #$time
echo $content
mail -s "IT3038 Linux IP" $emailaddress <<< $content
