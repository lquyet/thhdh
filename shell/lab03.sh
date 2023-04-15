path=$1
line=$2
command="${line}p"
if [ -e $path ]
then
	total=$(wc -l < $path)
	echo "There are total: $total lines"
	if [ $2 -le $total ]
	then
	    echo "$2 is a valid line number"
	    sed -n $command $path 
	else
		echo "invalid line"
	fi
else
	echo "Invalid path"	
fi




















