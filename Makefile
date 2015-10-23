es_host=`docker-machine ip default`
bulk: kibana-testdata/events.json
	curl -s -XPOST $(es_host):9200/_bulk --data-binary @kibana-testdata/events.json > /dev/null; echo

kibana-testdata: ./kibana-testdata/events.json
./kibana-testdata/events.json:
	git submodule update --init

open-kibana:
	open http://$(es_host):5601

open-head:
	open http://$(es_host):9200/_plugin/head

