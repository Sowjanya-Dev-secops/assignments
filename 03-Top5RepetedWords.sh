#!/bin/bash
file_path=$1
if [ -z "$file_path" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi
if [ ! -f "$file_path" ]; then
    echo "Error:: file is not exist"
    exit 1
fi
if [ ! -r "$file_path" ]; then
    echo "file don't have rading permissions"
    exit 1
fi

if [ ! -s "$file_path" ]; then
    echo "file is empty"
    exit 1
fi

tr '[:space:]' '[\n*]' < "$file_path" |
tr -cd '[:alnum:]\n' |
tr A-Z a-z|
sort |
uniq -c |
sort -nr |
head -5