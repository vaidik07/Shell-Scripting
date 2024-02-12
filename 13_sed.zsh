
# #123 matches the condition and & is used to give output
# echo "123 abc" | sed 's/[0-9]*/& &/'
# echo 
# echo
# #The sed command you provided substitutes the second occurrence of "unix" with "linux" 
# sed 's/unix/linux/2' file.txt
# echo 
# echo 

# #g at the end means global substitution 
# #i at the end means case sensitive 
# sed 's/unix/linux/ig' file.txt

# #the above example gives example if i have to use both 
# echo 
# echo
# #sed can also be used as grep command
# sed -n 's/operating system/&/p' file.txt

# echo 
# echo 
# #multiple commands can be executed using -e
# echo 
# echo 
# #a appends the line after and i appends the line before
# sed '/banana/ c\
# add this line ' file.txt

# #c replaces the current line 

# #the below command just removed the 123 on line number 1
# #sed '/^#/ s/[0-9][0-9]*//' 13_sed.zsh
# #^ symbol is used to denote starting
# sed '1,4 s/apple/seb/' file.txt
echo 
echo 
#deletes every line starting with #
sed '/^#/ d' 13_sed.zsh

echo 
echo
#deletes all lines after line no5 include 5th line

sed '5,$ d' 13_sed.zsh





