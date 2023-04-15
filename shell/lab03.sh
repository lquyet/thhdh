echo "path: "
read path
if [ -e $path ]
then
	total=$(wc -l < $path)
	echo "There are total: $total lines"
	if [ $2 -le $total ]
	then
	    echo "$2 is a valid line number"
	    #print line $2
	    
	fi
	
fi




















