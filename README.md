# alpine-redis
a very samll docker image base on alpine with Redis

Application will start `./startup.sh` Automatically.

# build local

```
docker build -t wangxian/alpine-redis .

```

# Set redis password

```bash
# quick start
docker run -it --rm -p 6379:6379 wangxian/alpine-redis

# user password
docker run -it -e REDIS_PASSWORD=300150_983c_d24fb_0d6963f_3f22 --rm -p 6379:6379 wangxian/alpine-redis

# mount data directory
docker run -it --rm -v ~/appdata/redis:/app -p 6379:6379 wangxian/alpine-redis
```