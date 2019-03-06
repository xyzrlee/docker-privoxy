#
# Dockerfile for udp2raw
#

FROM alpine
LABEL maintainer="Ricky Li <cnrickylee@gmail.com>"

RUN set -ex \
    && apk update \
    && apk upgrade \
    && apk add --no-cache privoxy curl

ENTRYPOINT [ "privoxy", "--no-daemon", "/etc/privoxy/config" ]
