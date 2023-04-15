echo "Enter a number from 10 to 50: "; read A

if [ $A -gt 10  -a  $A -lt  50 ]
then
	echo "$A is a valid number"

	isPrime=true

	for (( i=2; $i<$A; i++ )) 
	do
	    
	    #do something here
	    
	done

	if [ $isPrime == true ]
	then
	    echo "$A is a prime number"
	fi
	

fi


#for i in {1..5}
#do
#	echo $i
#done
