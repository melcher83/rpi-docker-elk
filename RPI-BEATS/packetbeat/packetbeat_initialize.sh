curl -XPUT -H 'Content-Type: application/json' http://10.1.8.20:9200/_template/packetbeat-7.0.0-alpha1 -d@packetbeat.template.json
curl -XDELETE 'http://10.1.8.20:9200/packetbeat-*'
