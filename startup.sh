#!/bin/sh


REDIS_PASSWORD=${REDIS_PASSWORD:-""}

if [ "$REDIS_PASSWORD" != "" ]; then
  echo "[i] Update redis requirepass=$REDIS_PASSWORD"
  echo "requirepass $REDIS_PASSWORD" >> /etc/redis.conf
fi

redis-server /etc/redis.conf
