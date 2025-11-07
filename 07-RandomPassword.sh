#!/bin/bash

length=$1

if [ -z "$length" ]; then
    echo "Usage: $0 <length>"
    exit 1
fi
# Character sets
UCASE="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
LCASE="abcdefghijklmnopqrstuvwxyz"
DIGITS="0123456789"
SPECIAL="!@#$%^&*()-_=+{}[]:;<>,.?/"
All="$UCASE$LCASE$DIGITS$SPECIAL"
password=""
for i in $( seq 1 $length); 
do

random_char=${All:RANDOM%${#All}:1}
password="$password$random_char"

done
echo "$password"
