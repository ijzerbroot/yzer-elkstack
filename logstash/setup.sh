#!/bin/sh

logstash-plugin install logstash-filter-json
logstash-plugin install logstash-output-slack

mkdir -p /usr/share/logstash/pipeline
mkdir -p /usr/share/logstash/config
/usr/local/bin/docker-entrypoint
