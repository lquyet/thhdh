echo "Enter a number from 10 to 50: "; read A

if (($A >= 10 && $A <= 50))
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
while (( $num < $A ))
do
	
    #do something here
done
