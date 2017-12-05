FROM fedora:26
MAINTAINER Frank Hoeben <f.hoeben@gmail.com>

RUN dnf -y update && cd /tmp && rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

ADD elastic.repo /etc/yum.repos.d/elastic.repo
ADD filebeat.yaml /opt/filebeat.yaml
RUN dnf -y install filebeat

#RUN elastalert-create-index --host elasticsearch --port 9200 --no-auth --no-ssl --config /opt/elastalert/config/elastalert.yaml --index elastalert_status --old-index None --url-prefix ''
#RUN elastalert-create-index --config /opt/elastalert/config/elastalert.yaml
ENTRYPOINT ["filebeat","-c","/opt/filebeat.yaml"]
