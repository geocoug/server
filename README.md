# server

My personal server configuration.

## Setup

1. Clone the repository

    ```sh
    git clone https://github.com/geocoug/server.git && \
    cd server
    ```

2. Create a `.env` file with the following keys:

    ```txt
    POSTGRES_DBNAME=
    POSTGRES_USER=
    POSTGRES_PASSWORD=
    ```

3. Start the services

    ```sh
    docker compose up -d
    ```

## Maintenance

### Restart a Docker Service

```sh
docker compose up -d --no-deps --build caddy
```
