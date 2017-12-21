SRC=http://172.31.200.50:8888/chronograf/v1/dashboards
TEL=1
curl -Ss $SRC|jq -r '.dashboards[]|@json' |while IFS= read -r dashboard; do echo $dashboard > dash.$TEL ;TEL=`expr $TEL + 1` ; done


import with:

 curl -X POST -H "Accept: application/json" -d @file DEST_URL
