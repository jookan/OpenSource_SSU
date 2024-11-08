#!/bin/bash

name=$1
phone=$2

file_name="DB.txt"
if [ ! -f $file_name ]; then
	touch $file_name
fi

echo "$name $phone" >> $file_name
exit 0
