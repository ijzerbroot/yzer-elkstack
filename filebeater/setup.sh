#!/bin/sh
dnf -y update && cd /tmp && rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

dnf -y install filebeat

#RUN elastalert-create-index --host elasticsearch --port 9200 --no-auth --no-ssl --config /opt/elastalert/config/elastalert.yaml --index elastalert_status --old-index None --url-prefix ''
#RUN elastalert-create-index --config /opt/elastalert/config/elastalert.yaml
filebeat -c /opt/filebeat.yaml
