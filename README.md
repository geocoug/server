# server

My personal host configurations.

## [Geocoug](./geocoug)

### Geocoug Setup

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

## [Localhost](./localhost)

### Localhost Setup

1. Clone the repository

    ```sh
    git clone

2. Clone the repository

    ```sh
    git clone https://github.com/geocoug/server.git && \
    cd server
    ```

3. Create a `.env` file with the following keys:

    ```txt
    POSTGRES_DBNAME=
    POSTGRES_USER=
    POSTGRES_PASSWORD=
    ```

4. Start the services

    ```sh
    docker compose up -d
    ```

## Maintenance

### Restart a Docker Service

```sh
docker compose up -d --build --force-recreate --no-deps caddy
```
