#!/bin/sh


if [ ! -f /installed ]; then
  REDIS_PASSWORD=${REDIS_PASSWORD:-""}
  
  touch /installed

  if [ "$REDIS_PASSWORD" != "" ]; then
    echo "[i] Update redis requirepass=$REDIS_PASSWORD"
    echo "requirepass $REDIS_PASSWORD" >> /etc/redis.conf
  fi

fi

redis-server /etc/redis.conf
