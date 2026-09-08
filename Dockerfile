FROM alpine:3.20

RUN apk add --no-cache bash iputils

WORKDIR /app

COPY app/ /app/

RUN chmod +x /app/*.sh

HEALTHCHECK CMD ["/app/health-check.sh"]

ENTRYPOINT ["/app/diagnostic.sh"]
