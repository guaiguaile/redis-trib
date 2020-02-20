FROM alpine:latest
COPY entrypoint.sh /
RUN apk add --no-cache \
  ca-certificates \
  ruby \
  ruby-bundler \
  ruby-dev \
  ruby-rdoc \
  ruby-irb \
  && gem install redis \
  && rm -rf /var/cache/apk/* \
  && rm -rf /var/lib/apt/lists/*


RUN wget http://download.redis.io/redis-stable/src/redis-trib.rb && \
    sed -i 's@yes_or_die "Can I set the above configuration?"@#yes_or_die "Can I set the above configuration?"@g' redis-trib.rb && \
    mv redis-trib.rb /usr/bin/redis-trib && \
    chmod 755 /usr/bin/redis-trib /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
