update:
	@git submodule update --remote
	@head -n-1 coronavirus/data/CoronavirusPL\ -\ Timeseries.csv  | nl -s"," -w1 > data/ids.csv
	@docker-compose restart logstash