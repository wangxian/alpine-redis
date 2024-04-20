FROM alpine:3.16
MAINTAINER WangXian <xian366@126.com>

WORKDIR /app

COPY redis.conf /etc/redis.conf
COPY startup.sh /startup.sh

RUN apk add --update redis \
    && apk add tzdata && cp /usr/share/zoneinfo/PRC /etc/localtime && echo "PRC" > /etc/timezone && apk del tzdata \
    && rm -rf /var/cache/apk/*

EXPOSE 6379

CMD ["/bin/sh", "/startup.sh"]
