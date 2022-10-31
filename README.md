# Snell Server For Docker

## 运行

1. compose 与 snell-server.conf 同目录(会操作的非同目录也行)
2. 映射 snell-server

conf 参考

```
[snell-server]
listen = ::0:port
psk = password
ipv6 = true
```

### amd64

- docker compose:

```
version: '3.8'
services:

  snell:
    image: ocd0711/docker-snell:amd64
    container_name: snell
    networks: host
    restart: always
    volumes:
      - $PWD/snell-server.conf:/etc/snell-server.conf
    environment:
      - SNELL_URL=https://dl.nssurge.com/snell/snell-server-v4.0.0-linux-amd64.zip
```

### arm64

```
version: '3.8'
services:

  snell:
    image: ocd0711/docker-snell:aarch64
    container_name: snell
    networks: host
    restart: always
    volumes:
      - $PWD/snell-server.conf:/etc/snell-server.conf
    environment:
      - SNELL_URL=https://dl.nssurge.com/snell/snell-server-v4.0.0-linux-aarch64.zip
```
