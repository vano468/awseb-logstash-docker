FROM logstash

MAINTAINER Ivan Kornilov <vano468@gmail.com>

ENV ROOT /opt/logstash

RUN logstash-plugin install logstash-output-amazon_es logstash-input-http
RUN apt-get update && apt-get -y install nginx apache2-utils gettext-base && apt-get clean

COPY config/nginx.tpl.conf /etc/nginx/
COPY config/logstash.tpl.conf $ROOT/
COPY bin/start.sh $ROOT/

EXPOSE 80 9901 9900/udp
CMD $ROOT/start.sh
