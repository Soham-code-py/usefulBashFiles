#!/bin/bash

read -p "Would you like to see your ip_addresses (y/n)" ip_address
if [ "$ip_address" = "y" ]; then
    cat ip_address
fi
read -p "Please enter your server(server@ip_address): " server
read -p "Please enter you privte key: " key

ssh -i ~/.ssh/$key $server
