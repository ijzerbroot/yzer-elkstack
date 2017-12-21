#!/bin/sh

dnf -y update && cd /tmp && rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

chmod 755 /opt/metricbeat.yaml
dnf -y install metricbeat

#RUN elastalert-create-index --host elasticsearch --port 9200 --no-auth --no-ssl --config /opt/elastalert/config/elastalert.yaml --index elastalert_status --old-index None --url-prefix ''
#RUN elastalert-create-index --config /opt/elastalert/config/elastalert.yaml
metricbeat -e -c /opt/metricbeat.yaml
