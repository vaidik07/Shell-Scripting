read -p "Enter your marks" marks
if [[ $marks -gt 50 ]]
then
	echo "You passed"
else 
	echo "You failed"
fi
