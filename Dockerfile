FROM alpine:edge
LABEL maintainer "Amir Hossein 'Roham' Mosalli <rohammosalli@gmail.com>"
RUN apk add --no-cache  nginx nginx-mod-stream --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/
RUN sh -c 'mkdir -p /run/openrc/ && mkdir -p /run/nginx'

COPY nginx.conf /etc/nginx/nginx.conf


EXPOSE 80 443


CMD ["nginx", "-g", "daemon off;"]