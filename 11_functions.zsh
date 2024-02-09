#there are two ways to call a function 
function myfunc {
    echo "-----------"
    echo "Heloo welcome to my function"
}
myfunc
myfunc

#the other way is 
func2() {
    echo "this is func2"
}
func2
func2

#passing arguments
args() {
    echo "Heloo $1"
}
args vaidik

#returning values 
ret() {
    echo "$1 $2"
}
val=$(ret "vaidik" "parashar")
echo $val
