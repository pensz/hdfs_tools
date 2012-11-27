#!/bin/bash

source hdfs_config.sh

r=$1
curl "$dfshome/webhdfs/v1$r?op=LISTSTATUS&user.name=hadoop"  2>/dev/null  


