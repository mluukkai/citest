#!/bin/sh

echo "Hello from shell script"

OUT=$(curl localhost:5000/health)

echo $?
echo '-'
echo $OUT
echo '-'
echo $OUT == 'ok' 

if [ $OUT == 'ok' ]; 
then
    echo 'equal'
    exit 1
else 
    echo 'not equal'
    exit 1 
fi