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

Lines=$(wc -l < "$file_path")
word=$(wc -w < "$file_path")
CHARS=$(wc -c < "$file_path")
echo "File: $FILE"
echo "Lines: $Lines"
echo "Words: $word"
echo "Characters: $CHARS"


