echo "숫자 두개와 연산자 입력 (구분 : 띄어쓰기)"
read num1 num2 oper

if [ "$oper" = "+" ]
then
	num3=`expr $num1 + $num2`
	echo $num3
else
	num3=`expr $num1 - $num2`
	echo $num3
fi
exit 0
