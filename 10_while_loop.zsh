a=10
b=0
while [[ $a -ge $b ]]
do 
        echo "value of a is $a"
        let a--
done  

#extracting from file 
while read names
do 
        echo "Names are $names"
done < names.txt
