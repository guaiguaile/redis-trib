#!/bin/sh

AUTH_PASSWORD=${AUTH_PASSWORD}

if [ -z $au ];then 
  echo "If redis has authentication enabled, set it AUTH_PASSWORD"
else
  sed -i "s/:password => nil/:password => \"${AUTH_PASSWORD}\"/g" /usr/lib/ruby/gems/2.5.0/gems/redis-4.0.2/lib/redis/client.rb
fi

exec "/usr/bin/redis-trib"
