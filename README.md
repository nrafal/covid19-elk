# COVID-19 Elasticsearch/Logstash/Kibana stack for analyzing coronavirus data

This repository helps you launch ELK stack and quickly play with data collected by students from GeoSin Club (credits below).

## Usage

You need `docker` and `make` utility to launch, also `curl` for importing dashboards.

To start:
```
$ make start
```
Basically, it takes timeseries from raw data, adds line numbers and start whole stack. 

Please wait, until your [Kibana](http://localhost:5601) is working properly. After that use
```
$ make dashboard
```
to import [basic dashboard](http://localhost:5601/app/kibana#/dashboard/f6791aa0-7393-11ea-a007-0b2df3562d77).


To update:
```
$ make update
```
It updates data from repository and then restarts logstash to reindex current data.

## Credits

Data was collected by GeoSiN Scientific Club Members from University of Warmia and Mazury in Olsztyn, Poland (www.geosin.pl).

Reference:

D. Tanajewski, A. Gleba, P. Borsuk, M. Augustynowicz, T. Kozakiewicz, M. Czyrzniak, P. Poskrobko: "Coronavirus infections data for Poland in 2020 (COVID-19 / 2019-nCoV)", 2020, GitHub, GitHub/dtandev/coronavirus, https://github.com/dtandev/coronavirus
