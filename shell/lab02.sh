echo "A: "
read A
echo "B: "
read B
echo "o: "
read o
echo "A, B, o = $A, $B, $o"

if [ $o == "+" ]; then
  echo "A + B = $((A+B))"
elif [ $o == "-" ]; then 
  echo "A - B = $((A-B))"
elif [ $o == "*" ]; then 
  echo "A * B = $((A*B))"
elif [ $o == "/" ]; then
  echo "A / B = $((A/B))"
elif [ $o == "%" ]; then
  echo "A % B = $((A%B))"
elif [ $o == "**" ]; then
  echo "A ** B = $((A**B))"
else 
  echo "invalid operator"
fi
