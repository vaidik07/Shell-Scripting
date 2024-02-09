arr=( 0 1 2 3.5 "vaidik")
echo ${arr[4]}
echo "All the elements in the array are ${arr[*]}"
echo "Second index ke baad ke do value are = ${arr[*]:2:2}"
echo "The size of the array is ${#arr[@]}" 
