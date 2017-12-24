#!/bin/bash

mkdir -p /glustervols/gv0
mount -t glusterfs 192.168.1.10:/glustervols/gv0
while :
do
  sleep 1000
done
