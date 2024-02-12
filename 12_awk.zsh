#prints all the elements in the file 
awk '{print;}' names.txt 
echo 
echo
#to print details of thomas and nisha
awk '/Thomas/ || /Nisha/' emp.txt
echo 
echo
#print details of thomas which are only in col 2
awk '/Thomas/ {print $2}' emp.txt
echo 
echo 
#to generate repot 
awk 'BEGIN{print "name\tdesignation\t\tsalary";}
{print $2,"\t",$3,"\t",$4,"\t",$NF;}
END{print "Report generated------";}' emp.txt
#here $NF is the last field or colomn
echo 
echo
#if i have to print details of emp having id>200
awk '$1>200 {print;}' emp.txt

echo 
echo

#Print the list of employees in Technology department
awk '$4 ~/Technology/' emp.txt
echo 
echo
#To print no of emp in tech 
awk 'BEGIN{count=0;}
$4 ~/Technology/ {count++;}
END{print"The no of emp in tech dept. are",count;}' emp.txt

#awk Built-in Variables
# NF : Number of fields in current line/record
# NR : Ordinal number of current line/record
# FS : Field Separator (Also -F can be used)
# OFS : Output Field Separator (default=blank)
# ORS: Output Record Separator
# FILENAME : Name of current input file
# $NF: Value of the last field in the current line/record.


echo 
echo
#Print the first field, excluding the first line
awk -F":" 'NR!=1{print $1;}' test1.txt
echo 
echo 
#using output field seprator
awk -F":" 'BEGIN{OFS="|"}NR!=1{print $1,$2;}' test1.txt
echo 
echo
#'Or' and 'AND' together
awk -F":" '($1=="AS" || $1=="OC") && $NF>11000 {print;}' test1.txt

echo 
echo 
#Reading from STDOUT

cat test1.txt | awk -F ":" '!/Continent/ {print $1}' | sort | uniq

echo 
echo
awk -F ":" 'NR!=1 {sum+=$NF} {print sum}' test1.txt
echo 
echo 

awk -F ":" 'NR!=1 {sum+=$NF} END {print sum}' test1.txt

echo 
echo 

#Set 2nd value as 0 where first field is "AS"
awk -F ":" 'BEGIN{OFS=":"} $1=="AS" {$NF=0} {print}' test1.txt
echo
awk -F ":" '{if($1=="AS") {$NF=0;}} {print}' test1.txt