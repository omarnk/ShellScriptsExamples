This script computes the average of numbers. 
#!/bin/bash
read n
sum = 0
if [[ $n -gt 500 ]]  && [[ $n -lt 1 ]]
then
echo "Invalid Input!"
exit 1
fi
for (( i=1 ; i<=$n ; i++ ))
do
  read a
  let "sum+=$a"   
done
printf "%.3f" $(echo $sum/$n | bc -l)
