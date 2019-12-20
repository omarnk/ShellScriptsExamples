# We provide you with expressions containing +,-,*,^, / and parenthesis. 
# None of the numbers in the expression involved will exceed 999.
# Your task is to evaluate the expression and display the correct output rounding upto 3 decimal places.

#!/bin/bash
read X
if [[ $X -gt 999 ]]
then
echo "Invalid Input!"
exit 1
fi
printf "%.3f" $(echo "$X" | bc -l)
