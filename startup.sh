#!/bin/sh

echo "[i] Update redis config file"
cp -vf ./redis.conf /etc/redis.conf

REDIS_PASSWORD=${REDIS_PASSWORD:-""}
if [ "$REDIS_PASSWORD" != "" ]; then
  echo "[i] Update redis masterauth=$REDIS_PASSWORD"
  echo "requirepass $REDIS_PASSWORD" >> /etc/redis.conf
fi

redis-server /etc/redis.conf