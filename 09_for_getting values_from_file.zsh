#getting values from a file names.txt

FILE="/Users/vaidik/Desktop/scripts/names.txt"
for name in $(cat $FILE)
do 
        echo "Name is $name"
done

#retriving files from array
myarray=( 1 2 3 4 vaidik )
length=${#myarray[*]}
for (( i=0;i<$length;i++ ))
do  
        echo "Value of array is ${myarray[$i]}"
done