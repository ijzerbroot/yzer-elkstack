#!/bin/sh
sudo docker config create prometheus.yml prometheus/prometheus.yml
sudo docker config create alert.rules prometheus/alert.rules
sudo docker config create amconfig alertmanager/config.yml
sudo docker config create grafanadash1 grafana/dashboards/docker_containers.json
sudo docker config create grafanadash2 grafana/dashboards/docker_host.json
sudo docker config create grafanadash3 grafana/dashboards/monitor_services.json
sudo docker config create grafanadash4 grafana/dashboards/nginx_container.json
sudo docker config create grafanads1 grafana/datasources/Prometheus.json
sudo docker config create grafanasetup grafana/setup.sh
sudo docker config create elastconf elasticsearch/config/elasticsearch.yml
sudo docker config create fbyaml configs/filebeat.yaml
sudo docker config create kbsetup kibana/setup.sh
sudo docker config create kbyaml kibana/config/kibana.yml
sudo docker config create logtrailconfig kibana/config/logtrailconfig
