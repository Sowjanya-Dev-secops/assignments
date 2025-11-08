Number_of_term=$1
if [ -z "$Number_of_term"]; then
    echo "Usage:: $0 <please enter number of terms"
    exit 1
fi
if [ $Number_of_term -lt 0 ];
    echo "please enter the positive number"
    exit 1
fi
a=0
b=1

echo ""fibonaci sereies:"
for (( i=0 ; i<=$Number_of_term; i++ ));
do
    echo -n "$a "
    fn=$(( a + b))
    a=$b
    b=$fn

done
