# doh-pihole

## Pre-requisites:

- docker
- docker-compose

## Getting up and running

```
docker-compose up -d
```

Set your DNS to 127.0.0.1 (or whatever this machine is if using this as a DNS server for more than just the local machine).

pihole password: `dnsoverhttps` (Can change in the docker-compose.yml file)
