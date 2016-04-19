#!/usr/bin/env bash

envsubst < /opt/logstash/logstash.tpl.conf > /opt/logstash/logstash.conf

service nginx start

exec logstash -f /opt/logstash/logstash.conf
