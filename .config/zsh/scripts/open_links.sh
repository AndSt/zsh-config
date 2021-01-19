#!/bin/bash

if [ -f "$1" ]; then
    FILE=$1
else
    echo "Please provide correct link file"
    exit 1
fi

for line in `sed '/^$/d' $FILE`;
do
    google-chrome $line
done
