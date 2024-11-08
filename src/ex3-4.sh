#!/bin/bash

echo "리눅스가 재미있나요? [yes/no]"
read answer

case $answer in 
	y* | Y*)
		echo "yes"
		;;
	n* | N*)
		echo "no"
		;;
	*)
		echo "yes or no로 대답해주세요"
esac
exit 0
