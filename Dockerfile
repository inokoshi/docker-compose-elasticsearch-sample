FROM dockerfile/java:oracle-java8

# Install ElasticSearch.
RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.0.tar.gz && \
  tar xvzf elasticsearch-1.4.0.tar.gz && \
  rm -f elasticsearch-1.4.0.tar.gz && \
  mv /tmp/elasticsearch-1.4.0 /elasticsearch

RUN \
  /elasticsearch/bin/plugin -install mobz/elasticsearch-head

# Define mountable directories.
VOLUME ["/data"]

# Mount elasticsearch.yml config
#ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["/elasticsearch/bin/elasticsearch"]

# Expose ports.
#   - 9200: HTTP
#   - 9300: transport
EXPOSE 9200

