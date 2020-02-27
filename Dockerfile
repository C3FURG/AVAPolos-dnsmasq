FROM alpine:3.8

MAINTAINER Rafael Souza <rsouza19796@gmail.com>

RUN apk update && apk --no-cache add dnsmasq

RUN mkdir -p /etc/default/
RUN echo -e "ENABLED=1\nIGNORE_RESOLVCONF=yes" > /etc/default/dnsmasq

COPY root /
EXPOSE 53
ENTRYPOINT ["dnsmasq","--no-daemon"]
