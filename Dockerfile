FROM alpine:latest

RUN apk --no-cache --update add socat

COPY run.sh /run.sh

CMD ["/run.sh"]