# Snell Server For Docker

## 运行

直接运行

```shell
docker run -d --name snell-server -p 80:8080 ocd/snell-server:latest
```

> 默认 PSK 为: 3iR6KAPRyt3VT06

设置自己的 PSK

```shell
docker run -d --name snell-server -e PSK=$yourpsk -p 80:8080 ocd/snell-server:latest
```
