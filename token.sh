#!/usr/bin/bash

read -p "Please enter your username" username
read -p "Please enter token: " token
read -p "Which repo would you like to use: " repo

git remote set-url origin https://$token@github.com/$username/$repo

read -p "Would you like to save this token and username (y/n): " token_response

if [ "$token_response" = "y" ]; then
    touch token.txt
    echo $(date +"%Y-%m-%d") >> token.txt
    echo $token >> token.txt
    echo $username >> token.txt
    echo "-------------------" >> token.txt
    echo "Your token and username is now located in the token.txt file."
fi
