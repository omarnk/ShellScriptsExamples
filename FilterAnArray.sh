#This script filters them input, put them in an array and output them as described in the below line.
#From the given list, remove the names that contain 'a' or 'A' in them. 
#If there are no names left after removing these characters, you should display a blank line.
#!/bin/bash
n=0
while read x
do
   arr["${n}"]="${x}"
   n+=1
done

declare -a output="${arr[@]/*[Aa]*/}"
if [[ ${#output[@]} > 0 ]]
then
    echo ${output[@]}
else
    echo " "
fi
