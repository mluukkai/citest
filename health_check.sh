#!/bin/bash

OUT=$(curl localhost:8080/health)

if [ $OUT == 'ok' ]; 
then
    exit 0
else 
    exit 1
fi