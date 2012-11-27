#!/bin/bash

source hdfs_config.sh

f=$1

curl -i -X PUT "${dfshome}/webhdfs/v1$f?op=MKDIRS&user.name=hadoop" 2>/dev/null
# info=$(curl -i -X PUT "$dfshome/webhdfs/v1$r?op=CREATE&user.name=hadoop"  2>/dev/null | grep 'Location' )

