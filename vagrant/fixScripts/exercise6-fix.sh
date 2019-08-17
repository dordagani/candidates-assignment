#!/bin/bash
target_path=${*: -1:1}
size=0

        if [ $HOSTNAME == "server1" ]
        then
                target_server="server2"
        else
                target_server="server1"
        fi


        for i in ${@:1:$#-1};do
                ((size+=$(wc -c < "$i")))
                scp -q $i vagrant@$target_server:$target_path
         done

echo $size
