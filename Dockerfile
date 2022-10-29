FROM arm64v8/ubuntu:latest
LABEL OCD <i@ocd0522.tk>
COPY snell-server snell-server.conf entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
