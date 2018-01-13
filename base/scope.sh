#!/bin/sh


sudo curl -L git.io/scope -o /usr/local/bin/scope
sudo chmod a+x /usr/local/bin/scope
sudo scope launch 172.31.200.51 172.31.200.52 172.31.200.53

sudo docker update --restart=always weavescope
