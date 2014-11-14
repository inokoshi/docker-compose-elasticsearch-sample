FROM dockerfile/java:oracle-java8
RUN curl -OL https://download.elasticsearch.org/kibana/kibana/kibana-4.0.0-BETA2.tar.gz; \
    tar xvfz kibana-4.0.0-BETA2.tar.gz; \
    mv kibana-4.0.0-BETA2 /kibana
WORKDIR /kibana
ADD ./kibana.yml /kibana/config/kibana.yml
EXPOSE 5601
ENTRYPOINT ["./bin/kibana"]
