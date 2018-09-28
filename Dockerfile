FROM alpine

MAINTAINER Daniel Wilhelm <shieldwed@outlook.com>

RUN apk --update --update-cache upgrade \
      && apk add \
          rsync \
      && rm /var/cache/apk/APKINDEX.*.tar.gz

ENTRYPOINT ["/usr/bin/rsync"]
