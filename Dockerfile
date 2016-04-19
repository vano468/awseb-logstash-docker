FROM logstash

MAINTAINER Ivan Kornilov <vano468@gmail.com>

ENV ROOT /opt/logstash

RUN plugin install logstash-output-amazon_es
RUN apt-get update && apt-get -y install nginx gettext-base && apt-get clean

COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/logstash.tpl.conf $ROOT/
COPY bin/start.sh $ROOT/

EXPOSE 80 9900/udp
CMD $ROOT/start.sh
