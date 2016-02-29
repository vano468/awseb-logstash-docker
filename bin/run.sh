#!/usr/bin/env bash

docker run -d \
  --name logstash \
  -p 9292:9292 \
  -p 9200:9200 \
  -p 9998:9998 \
  -v $PWD/config:/opt/logstash/conf.d \
  -v $PWD/.logstash:/opt/logstash/data \
  pblittle/docker-logstash
