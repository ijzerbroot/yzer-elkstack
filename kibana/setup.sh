#!/bin/bash

/usr/share/kibana/bin/kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.25/logtrail-6.1.1-0.1.25.zip
/usr/share/kibana/bin/kibana-plugin remove x-pack
cp /tmp/logtrailconf /usr/share/kibana/plugins/logtrail/logtrail.json
/usr/local/bin/kibana-docker
