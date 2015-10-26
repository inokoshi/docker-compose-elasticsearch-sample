# README


# Getting Started
## Downlaod sample data

    $ make kibana-testdata


## Launch with docker-compose

    $ docker-compose up


## Kibana config
ref) <http://qiita.com/harukasan/items/3737a1cc0bed2facc14e#kibana3%E3%81%A8%E3%81%AE%E5%A4%A7%E3%81%8D%E3%81%AA%E9%81%95%E3%81%84>

```
[x] Index contains time-based events
[ ] Use event times to create index names

Index name or pattern:
    sample_service-2014.04.27
Time-field name:
    @timestamp
```

```
2014-04-27 00:00:00.000
2014-04-27 23:59:59.999
```
