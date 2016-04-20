#!/usr/bin/env bash

htpasswd -bc /etc/nginx/.htpasswd $HTTP_BASIC_NAME $HTTP_BASIC_PASSWORD

envsubst < /opt/logstash/logstash.tpl.conf > /opt/logstash/logstash.conf
envsubst < /etc/nginx/nginx.tpl.conf > /etc/nginx/nginx.conf

service nginx start

exec logstash -f /opt/logstash/logstash.conf
