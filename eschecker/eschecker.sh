#!/bin/bash
while :
do
  cat /dev/null > /eschecker/web/metrics/index.html.tmp
  for script in `ls /escheckerchecks`
  do
    bash /escheckerchecks/${script} >> /eschecker/web/metrics/index.html.tmp
  done
  cp -p /eschecker/web/metrics/index.html.tmp /eschecker/web/metrics/index.html
  echo "eschecker sleeping for ${SLEEPTIME} seconds"
  sleep ${SLEEPTIME}
done
