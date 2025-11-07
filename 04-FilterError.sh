#!/bin/bash
source_path=$1
destination_path=$2
if [ $# -lt 2 ]; then
    echo "ERROR:: usage:$0 <source file > <Destination file> "
    exit 1
fi

if [ ! -f $source_path ]; then
    echo "source File doesnot exist "
    exit 1
fi

while IFS= read -r line;
do
    if echo "$line" |grep -q 'ERROR';then
        echo "$line" >> $destination_path
    fi
done <<< "$source_path"