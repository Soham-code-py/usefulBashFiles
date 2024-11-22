#!/bin/bash

read -p "Opening /var/log/syslog file, would you like to continue (y/n)? " openFile

if [ "$openFile" == "y" ]; then
    echo "Press q to quit"
    echo "---------------------------------"
    less /var/log/syslog
else
    echo "Process Terminated"
fi
