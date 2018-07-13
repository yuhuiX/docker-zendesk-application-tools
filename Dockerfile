From ruby:2.3-alpine

RUN apk add --update \
  g++ \
  git \
  make \
  nodejs \
  python

RUN gem install \
  rake \
  zendesk_apps_tools \
  && rm -rf /var/cache/apk/*

ADD patch_zat_server.sh /tmp/patch_zat_server.sh
RUN /tmp/patch_zat_server.sh

EXPOSE 4567
WORKDIR /data
