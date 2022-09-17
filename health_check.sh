#!/bin/sh

echo "Hello from shell script"

curl localhost:8080/healtha

if [ $? -eq 0 ]; 
then 
    exit 1
else 
    exit 0 
fi