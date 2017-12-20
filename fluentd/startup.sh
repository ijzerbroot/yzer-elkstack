#!/bin/sh

apk add --update --virtual .build-deps build-base ruby-dev
gem install fluent-plugin-elasticsearch --no-rdoc --no-ri --version 2.4.0
fluentd -c /fluentd/etc/${FLUENTD_CONF} -p /fluentd/plugins $FLUENTD_OPT
