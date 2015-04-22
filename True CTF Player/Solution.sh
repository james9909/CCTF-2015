#!/bin/bash

i=0
while :
do
    wget play.camsctf.com/challenges 2> /dev/null
    echo "Request #$i"
    sleep 900 # 15 min delay
    i=$(($i+1))
done
