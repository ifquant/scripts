#!/bin/bash
name=$1
docknum=`docker container list|grep $name |wc -l`
if [ $docknum -eq 1 ]; then
    hash=`docker container list|grep $name |awk -F' ' '{print $1}'`
    name=`docker container list|grep $name |awk -F' ' '{print $2}'`
    echo "hash:$hash  $name"
    docker exec -it $hash /bin/bash
else
    echo "more  container name than one matchs $name"
fi
