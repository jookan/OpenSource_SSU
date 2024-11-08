#!/bin/bash

echo "프로그램 시작"
func_command()
{
	echo "함수 안으로 들어왔음"
	eval $1

}

func_command "ls -l"
exit 0
