FROM alpine:latest
MAINTAINER WangXian <xian366@126.com>

WORKDIR /app
COPY . .

RUN apk add --update redis && rm -rf /var/cache/apk/*

EXPOSE 6379
CMD ["./startup.sh"]
