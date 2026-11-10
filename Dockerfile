FROM alpine:latest

RUN apk update; apk add iproute2 wget tcpdump

COPY ./gobgp /usr/bin

COPY ./gobgpd /usr/bin

ENTRYPOINT ["/usr/bin/gobgpd", "-f", "/etc/gobgpd.conf]
