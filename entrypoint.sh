#!/bin/sh

AUTH_PASSWORD=${AUTH_PASSWORD}
CLIENT_PATH=$(find  / -name client.rb)
if [ -z ${AUTH_PASSWORD} ];then 
  echo "If redis has authentication enabled, set it AUTH_PASSWORD"
else
  sed -i "s/:password => nil/:password => \"${AUTH_PASSWORD}\"/g" ${CLIENT_PATH}
fi

exec "/usr/bin/redis-trib"
