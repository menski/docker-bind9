# Docker image for BIND 9

## How to run

You need a local configuration `named.conf.local` and
a forward (e.g. `db.my.domain.com`) and a reverse
(e.g. `db.0.168.192`) lookup zone file.

See `db.my.domain.com` and `db.0.168.192` for
examples.

Start the container with docker

```
docker run -d --name bind -p 53:53/udp \
  -v $PWD/named.conf.local:/etc/bind/named.conf.local \
  -v $PWD/db.my.domain.com:/etc/bind/db.my.domain.com \
  -v $PWD/db.0.168.192:/etc/bind/db.0.168.192 \
  menski/bind9
```

or docker-compose

```
docker-compose -d bind
```
