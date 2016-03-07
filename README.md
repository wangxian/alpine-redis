# alpine-redis
Alpine Linux-base Docker image with Redis


Application will start `./startup.sh` Automatically.

# build
```
docker build -t wangxian/alpine-redis .
docker run -it --rm -p 6379:6379 wangxian/alpine-redis
```