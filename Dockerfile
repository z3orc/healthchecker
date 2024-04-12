FROM alpine:3.19.1

RUN apk add --no-cache curl

COPY . .
RUN ["chmod", "+x", "./entrypoint.sh"]

ENV HEALTHCHECK_URL = ""
ENV DELAY = "1m"

ENTRYPOINT [ "/bin/sh", "entrypoint.sh" ]