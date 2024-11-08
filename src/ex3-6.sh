#!/bin/bash

folder_name=$1

if [ ! -d "$folder_name" ] 
then 
	mkdir "$folder_name"
fi

cd $folder_name
for i in `seq 0 4`
do
	touch "$folder_name$i.txt"
done

mkdir $folder_name
cd $folder_name
tar -cf $folder_name.tar ../*.txt
tar -xvf $folder_name.tar

exit 0
