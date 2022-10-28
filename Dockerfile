FROM ubuntu:latest
MAINTAINER OCD <i@ocd0522.tk>
COPY snell-server snell-server.conf entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
