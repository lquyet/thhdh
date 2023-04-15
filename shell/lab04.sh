echo "Enter a number from 1000 to 50000: "; read A

if [ $A -gt 1000  -a  $A -lt  50000 ]
then
	echo "$A is a valid number"

	isPrime=true

	for (( i=2; $i<$A; i++ )) 
	do
		t=$((A%i))
	    if [ $t == 0 ]; then
			isPrime=false
			break
		fi
	done

	if [ $isPrime == true ]
	then
	    echo "$A is a prime number"
	else
		echo "$A is NOT a prime number"
	fi
else
	echo "$A is NOT a valid number"
fi


#for i in {1..5}
#do
#	echo $i
#done
