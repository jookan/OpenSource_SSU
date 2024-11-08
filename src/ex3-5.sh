#!/bin/bash

func_command()
{
	echo "함수 안으로 들어왔음"
	if [ -z "$1" ]; then
		eval "ls"
	else 
		eval "ls $1"
	fi
}

echo "프로그램을 시작합니다"
func_command $1
echo "프로그램을 종료합니다"
exit 0
