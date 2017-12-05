FROM fedora:26
MAINTAINER Frank Hoeben <f.hoeben@gmail.com>

RUN dnf -y update && dnf -y install gcc git curl python2-pip redhat-rpm-config libffi-devel python-devel openssl-devel

RUN mkdir -p /usr/local/src && git clone https://github.com/Yelp/elastalert.git /usr/local/src/elastalert && mkdir -p /opt
RUN pip install cryptography
RUN pip install "elasticsearch>=5.0.0"
RUN pip install "setuptools>=11.3" &&  cd /usr/local/src/elastalert && python setup.py install
RUN mv /usr/local/src/elastalert/elastalert /opt && mkdir -p /opt/elastalert/config
#RUN elastalert-create-index --host elasticsearch --port 9200 --no-auth --no-ssl --config /opt/elastalert/config/elastalert.yaml --index elastalert_status --old-index None --url-prefix ''
#RUN elastalert-create-index --config /opt/elastalert/config/elastalert.yaml
ENTRYPOINT ["python", "/opt/elastalert/elastalert.py", "--config", "/opt/elastalert/config/elastalert.yaml"]
