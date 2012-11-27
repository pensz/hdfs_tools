#!/bin/bash

source hdfs_config.sh

r=$1
curl -L "$dfshome/webhdfs/v1$r?op=OPEN&user.name=hadoop"  2>/dev/null  


