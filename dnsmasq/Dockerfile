FROM alpine:edge
LABEL maintainer "Amir Hossein 'Roham' Mosalli <rohammosalli@gmail.com>"

RUN apk --no-cache add dnsmasq \
    && mkdir -p /etc/dnsmasq.d/

ADD proxy.conf /etc/dnsmasq.d/
ADD dnsmasq.conf /etc/

EXPOSE 53 53/udp


ENTRYPOINT ["dnsmasq", "-d"]