#!/bin/bash
read X
read Y
read Z
if [[ $X -eq $Y ]] && [[ $Y -eq $Z ]]
then
    echo "EQUILATERAL"
elif [[ $X -eq $Y ]] && [[ $Y -ne $Z ]] || [[ $X -eq $Z ]] && [[ $Y -ne $Z ]] || \
[[ $Y -eq $Z ]] && [[ $X -ne $Z ]]
then
    echo "ISOSCELES"
elif [[ $X -ne $Y ]] && [[ $Y -ne $Z ]]
then
    echo "SCALENE"
else
 echo "Invalid input"
fi
