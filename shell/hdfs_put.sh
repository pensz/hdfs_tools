#!/bin/bash


source hdfs_config.sh

f=$1
r=$2
info=$(curl -i -X PUT "$dfshome/webhdfs/v1$r?op=CREATE&user.name=hadoop"  2>/dev/null | grep 'Location' )

info=$(echo $info | sed 's/\r//g' | sed 's/\n//g')
url=${info:10}

curl -i -X PUT -T $f "$url"

