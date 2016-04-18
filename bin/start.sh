#!/usr/bin/env bash

envsubst < /config/logstash.tpl.conf > /config/logstash.conf

exec logstash -f /config/logstash.conf
