# Extend offical postgreSQL Image

Follow by [https://hub.docker.com/_/postgres](https://hub.docker.com/_/postgres)

Change default locale to `zh_CN.UTF-8`


![Docker deploy](https://github.com/gsmlg/postgres-docker/workflows/Docker%20deploy/badge.svg)

# run db script

```shell
#!/bin/bash

rm -rf /tmp/datadir || mkdir -p /tmp/datadir

docker rm -f db

docker run \
    -d \
    --name db \
    --env POSTGRES_USER=postgres \
    --env POSTGRES_PASSWORD=postgres \
    --env POSTGRES_DB=data \
    -v /tmp/datadir:/var/lib/postgresql/data \
    -p 5432:5432 \
    gsmlg/postgres
```
