#!bin/bash
File_path=$1
if [ ! -z "$File_path" ]; then
    if [ -f "$File_path" ]; then
        echo " it is a file"
        if [ -r "$File_path" ]; then
            echo "It is readable "
        elif [ -w "$File_path" ]; then
            echo "It is writable"
        else 
            echo "don't have permisssion to write and readable"
        fi
    fi
    if [ -d "$File_path" ]; then
        echo "It is a directory"
        ls -l $File_path
    fi

else
    echo "file path is not exist"

fi