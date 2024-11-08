#!/bin/bash

dir_name=$1

if [ ! -d "$dir_name" ] 
then
	mkdir "$dir_name"
fi

cd $dir_name

for((i=0;i<5;i++)) do
	mkdir "file$i"
	touch "file$i.txt"
	cd "file$i"
	ln -s "../file$i.txt" "file$i.txt"
	cd ..
done
exit 0
