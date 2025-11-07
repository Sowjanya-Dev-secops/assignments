#!/bin/bash
file_path="$1"
String1="FOO"
String2="BAR"
if [ ! -d "$file_path" ]; then
    echo "ERROR:: directory  does not exist "
    exit 1
fi
find $file_path -type f -name "*.conf" -print0 |
while IFS= read -r line;
do
    sed -i "s/$String1/$String2/g" "$line"
    echo "Updated file $line"
done

# find "$file_path" -type f -name "*.conf" |
# while IFS= read -r line; do
#     sed -i "s/$String1/$String2/g" "$line"
#     echo "Updated file: $line"
# done