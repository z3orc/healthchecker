FROM alpine:3.19.1
RUN apk add --no-cache curl

COPY entrypoint.sh ./

ENV HEALTHCHECK_URL=""

ENTRYPOINT [ "/bin/bash", "entrypoint.sh" ]