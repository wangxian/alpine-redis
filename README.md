# alpine-redis
Alpine Linux-base Docker image with Redis


Application will start `./startup.sh` Automatically.

# build
```
docker build -t wangxian/alpine-redis .
docker run -it --rm -p 6379:6379 wangxian/alpine-redis
```

# Set redis password

docker run -it -e REDIS_PASSWORD=1122334455 --rm -p 6379:6379 wangxian/alpine-redis