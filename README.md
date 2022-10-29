# Snell Server For Docker

## 运行

> 默认 PSK 为: 3iR6KAPRyt3VT06

### amd64

- docker compose:

```
version: '3.8'
networks:
  snell-ocd:
services:

  snell:
    image: ocd0711/docker-snell:amd64
    container_name: snell
    networks:
      - snell-ocd
    restart: always
    ports:
      - "$yourport:8080"
    environment:
      - PSK=$yourpsk
```

- docker run

```
docker run -d --restart=always --name snell-server -e PSK=$yourpsk -p $yourport:8080 ocd0711/docker-snell:amd64
```

### arm64

```
version: '3.8'
networks:
  snell-ocd:
services:

  snell:
    image: ocd0711/docker-snell:aarch64
    container_name: snell
    networks:
      - snell-ocd
    restart: always
    ports:
      - "$yourport:8080"
    environment:
      - PSK=$yourpsk
```

- docker run

```
docker run -d --restart=always --name snell-server -e PSK=$yourpsk -p $yourport:8080 ocd0711/docker-snell:aarch64
```