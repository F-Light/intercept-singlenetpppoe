#!/bin/sh

#start pppoe-server
if [ -n "$(ps | grep pppoe-server | grep -v grep)" ]
then
    killall pppoe-server
fi
pppoe-server -k -I br-lan

regexp="rcvd \[PAP AuthReq id=0xf user=\"(.*)\" password=\"(.*)\"\]"
handleLog(){
  while read data; do
    if [[ $data =~ $regexp ]];then
        username="${BASH_REMATCH[1]}"
        password="${BASH_REMATCH[2]}"
        if [ "$username" != "$username_old" ]
        then
            ifdown wan
            uci set network.wan.username="$username"
            uci set network.wan.password="$password"
            uci commit
            ifup wan
            username_old="$username"
            logger -t nk4 "new username $username"
        fi
    fi
  done
}

tail -f -n 1 /tmp/pppoe.log  | handleLog
