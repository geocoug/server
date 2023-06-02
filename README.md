# server

My personal server configuration.

## Environment Variables

```ini
POSTGRES_DBNAME=
POSTGRES_USER=
POSTGRES_PASSWORD=
```

## Setup

```sh
git clone https://github.com/geocoug/server.git && \
cd server && \
export POSTGRES_DBNAME="" && \
export POSTGRES_USER="" && \
export POSTGRES_PASSWORD="" && \
docker compose up -d
```
