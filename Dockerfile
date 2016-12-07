
FROM alpine

MAINTAINER Markus Juenemann <markus@juenemann.net>

RUN apk add --no-cache \
        supervisor&& \
    mkdir /etc/supervisord.d

COPY supervisord.conf /etc

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
