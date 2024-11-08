#!/bin/bash

echo "키와 몸무게 입력"
read height weight

height=$(echo "scale=1; $height / 100" | bc -l)
BMI=$(echo "scale=1; $weight / ($height * $height)" | bc -l)

if [ "$(echo "$BMI < 18.5" | bc -l)" -eq 1 ]; then
	echo "저체중입니다."
elif [ "$(echo "$BMI >= 23" | bc -l)" -eq 1 ]; then
	echo "비만입니다."
else
	echo "정상체중입니다."
fi
