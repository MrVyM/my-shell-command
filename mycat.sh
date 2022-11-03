#!/bin/bash

SOURCE=$@

function mycat()
{
    SOURCE=$1
    if [ ! -f "$SOURCE" ];
    then
        echo "The file $SOURCE doesn't exists."
        exit 1
    fi
 
    
    while read myfile 
    do 
        echo "$myfile"
    done < "$SOURCE"
}

for file in $SOURCE
do 
    mycat $file
done
