FROM gliderlabs/alpine:3.4
MAINTAINER Jeffry Hesse "jeffryxtron@gmail.com"
RUN apk-install curl \
    && curl -Ls https://github.com/darthhater/docker-phantomjs2/releases/download/v2.1.1/dockerized-phantomjs.tar.gz \
       | tar xz -C /
ENTRYPOINT ["/usr/local/bin/phantomjs"]
