#!/bin/bash

num=1

while true; do
    echo `date`     :$num 
    num=`expr $num + 1`
    sleep 1
done
