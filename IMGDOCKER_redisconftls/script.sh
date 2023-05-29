#!/bin/sh

redis-server /etc/redis/redis.conf --daemonize yes
tail -f /dev/null
