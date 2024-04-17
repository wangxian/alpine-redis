FROM alpine:3.16
MAINTAINER WangXian <xian366@126.com>

WORKDIR /app

COPY redis.conf /etc/redis.conf
COPY startup.sh /startup.sh

RUN apk add --update redis && rm -rf /var/cache/apk/*

EXPOSE 6379

CMD ["/bin/sh", "/startup.sh"]
