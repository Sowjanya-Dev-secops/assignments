#!/bin/bash
read -p "enter the string : " string
if [ -z "$string" ]; then
    echo "USAGE: $0 <please enter the string "
    exit 1
fi

rev_string=$( echo "$string" | rev )
if [ $string == $rev_string ]; then
    echo " $string is polindrome"
else    
    echo " $string is not polindrome"

fi