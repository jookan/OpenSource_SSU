#!/bin/bash

count=${1:-10}

for i in $(seq 1 $count)
do
	echo "Hello World"
done

exit 0
