#!/bin/bash

file_name=$1

if [ ! -d "$file_name" ] 
then 
	mkdir "$file_name"
fi

cd $file_name

for i in `seq 0 4`
do
	touch "$file_name$i.txt"
done
tar -cvf "$file_name.tar" *.txt

new_folder="new_$file_name"
mkdir -p "$new_folder"
mv "$file_name.tar" "$new_folder"

cd "$new_folder"

tar -xf "$file_name.tar" 

exit 0
