#!/bin/bash

echo "finding updates..."; echo "                   "

sudo apt update
echo "-----------------------------"
read -p "Would you like to upgrade (y/n): " upgrade

if [ "$upgrade" = "y" ]; then
    sudo apt upgrade
    echo "------------------------"
    echo "upgrade complete"
fi
