#!/bin/bash
if [ $# -eq 0 ];then
    echo "The number is not provided "
    exit 1
fi
largest=$1
for num in $@ ;
do
    if [ $num > $largest ];   then
        largest=$num
    fi
done
echo "the largest num is :$largest "