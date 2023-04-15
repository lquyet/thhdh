echo "Enter a number from 1000 to 5000: "; read A

if (($A >= 1000 && $A <= 5000))
then
	echo "The number entered is valid"
else
	echo "The number entered is invalid"
	exit
fi

num=0
num1=0
num2=1
#while [ $num -lt $A ]
while (( $num1 < $A ))
do
	temp=$num2
	num2=$((num1 + num))
	num=$num1
	num1=$temp
    #do something here
done
echo "Result is $num"
