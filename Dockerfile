FROM golang:1.21.4-alpine3.18

RUN apk add --no-cache git

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]