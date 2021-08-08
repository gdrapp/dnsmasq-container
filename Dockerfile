FROM alpine:3.14

RUN apk update \
    && apk upgrade \
    && apk add tini dnsmasq

ENTRYPOINT ["/sbin/tini", "--", "/usr/sbin/dnsmasq", "-k", "--log-facility=-"]