curl -XPUT -H 'Content-Type: application/json' http://10.1.8.20:9200/_template/filebeat-7.0.0-alpha1 -d@filebeat.template.json
curl -XDELETE 'http://10.1.8.20:9200/filebeat-*'
