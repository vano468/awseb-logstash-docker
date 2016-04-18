FROM logstash

MAINTAINER Ivan Kornilov <vano468@gmail.com>

RUN plugin install logstash-output-amazon_es
RUN apt-get update && apt-get -y install gettext-base && apt-get clean

COPY config/logstash.tpl.conf /config/
COPY bin/start.sh /bin/

EXPOSE 9900/udp
CMD /bin/start.sh
