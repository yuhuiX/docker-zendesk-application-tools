From ruby:2.3-alpine

RUN set -ex  \
	apk add --no-cache \
		nodejs

RUN gem install zendesk_apps_tools



