#!/bin/sh


# #############################################
# Copyright (c) 2017-2027 letv Inc. All rights reserved.
# #############################################
#
# Name:  net-test.sh
# Date:  2017-01-08 22:38
# Author:   suxiaolin
# Email:   suxiaolin@le.com
# Desc:  
#
#

domain=`echo $DOMAIN`
count=`echo $COUNT`
okcount=`echo $OKCOUNT`

i=0
ok=0

while (($i<$count)); do
    
    echo $i
    date
#    ifconfig
#    ip=$(ifconfig |grep Bcast |awk -F 'addr:' '{print $2}'|awk -F ' ' '{printf $1}')

    ping $domain  -c 1
    if [ $? == 0 ];then
        ok=`expr $ok + 1`    
        echo "ping ok"
    else
        echo "@@@@@@@@@@@@@@@  ping failed @@@@@@@@@@@@"
    fi

    i=`expr $i + 1`
    sleep 3
done

if [ $ok -lt $okcount ];then
    echo "test failed"
    sleep 60
else
    while [ 1 ]; do
        echo "test success" 
        sleep 600 
    done 
fi
