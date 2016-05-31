From ruby:2.3-alpine

RUN set -ex  \
	&& apk add --update \
		nodejs \
	&& gem install zendesk_apps_tools \
	&& rm -rf /var/cache/apk/* 

ADD patch_zat_server.sh /tmp/patch_zat_server.sh
RUN /tmp/patch_zat_server.sh

CMD ["zat"]

EXPOSE 4567

