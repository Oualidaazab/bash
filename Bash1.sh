#!bin/bash 
# task is to use for loops to display only odd natural numbers from 1 to 99  .
#from Hacker rank 
for ((i=0; i<101; i++)); do  
  if (( i % 2 != 0 )); then 
    echo "$i"
  fi 
done


