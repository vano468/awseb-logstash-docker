#!/usr/bin/env bash

docker run -d \
  -e ES_HOST="foo.us-west-1.es.amazonaws.com" \
  -e AWS_REGION="us-west-1" \
  -e ACCESS_KEY="<AWS_ACCESS_KEY_ID>" \
  -e SECRET_KEY="<AWS_SECRET_KEY>" \
  -e ENVIRONMENT="development" \
  -p 80:80 \
  -p 9900:9900/udp \
  zazo/logs
