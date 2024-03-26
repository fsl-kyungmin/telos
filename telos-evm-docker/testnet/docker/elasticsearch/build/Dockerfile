FROM docker.elastic.co/elasticsearch/elasticsearch:8.8.1

COPY elasticsearch.yml /usr/share/elasticsearch/config/

EXPOSE 9200

COPY entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
