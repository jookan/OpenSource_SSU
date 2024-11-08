#!/bin/sh

echo "반복횟수 입력"
read count

for i in $(seq 1 $count)
do
	echo "Hello World"
done

exit 0
