FROM fedora:26
MAINTAINER Frank Hoeben <f.hoeben@gmail.com>

RUN dnf -y update && cd /tmp && rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

ADD elastic.repo /etc/yum.repos.d/elastic.repo
ADD metricbeat.yaml /opt/metricbeat.yaml
RUN chmod 755 /opt/metricbeat.yaml && dnf -y install metricbeat

#RUN elastalert-create-index --host elasticsearch --port 9200 --no-auth --no-ssl --config /opt/elastalert/config/elastalert.yaml --index elastalert_status --old-index None --url-prefix ''
#RUN elastalert-create-index --config /opt/elastalert/config/elastalert.yaml
ENTRYPOINT ["metricbeat","-e","-c","/opt/metricbeat.yaml"]
