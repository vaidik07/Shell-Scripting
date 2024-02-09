for i in 1 2 3 4 5 6 7 8 9 10
do 
        echo "Number is $i"
done

#above loop can be written as using wildcards
for i in {1..10}
do 
        echo "Number is $i"
done

#Other ways to represent 
for name in vaidik tamish palam 
do 
        echo "Name is $name"
done