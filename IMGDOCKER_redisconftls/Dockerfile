FROM redis:latest
MAINTAINER Ángel Suárez Pérez "angelsp1612@gmail.com"
RUN mkdir -p /etc/tlsredis && mkdir -p /etc/redis
COPY ./redis.crt /etc/tlsredis/
COPY ./redis.key /etc/tlsredis/
COPY ./ca.crt /etc/tlsredis/
COPY ./redis.conf /etc/redis/
COPY ./script.sh /opt/
RUN chmod +x /opt/script.sh
EXPOSE 6379
ENTRYPOINT ["/opt/script.sh"]
