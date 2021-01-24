# docker-tcp-portforward

Docker image for TCP port forwarding.

```
             ---------------            -------------------------------
             |  Docker PC  |            |          Target PC          |
--- TCP ---> |             | -- TCP --> |                             |
             | <BIND_PORT> |            | <TARGET_HOST>:<TARGET_PORT> |
             ---------------            -------------------------------                               
```

## Usage

### Method1 : docker run

```
docker run --restart=always -d -p <BIND_PORT>:8888 -e TARGET_HOST=<TARGET_HOST> -e TARGET_PORT=<TARGET_PORT> seroron/docker-tcp-portforward
```

### Method2 : docker-compose

1. Create .env

```
BIND_PORT=8080
TARGET_HOST=192.168.10.100
TARGET_PORT=8080
```

2. Run

```
docker-compose up -d
```
