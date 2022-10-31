FROM arm64v8/ubuntu:latest
LABEL OCD <i@ocd0522.tk>
RUN apt update && \
    apt install -y wget zip && \
    apt clean && \
    apt autoclean && \
    rm -fr /var/lib/apt/lists/*
# ARG SNELL_URL=https://dl.nssurge.com/snell/snell-server-v4.0.0-linux-aarch64.zip
COPY entrypoint.sh /usr/local/bin/
# RUN wget --no-check-certificate -O snell.zip $SNELL_URL && \
#     unzip snell.zip && \
#     rm -f snell.zip && \
#     chmod +x snell-server && \
#     mv snell-server /usr/local/bin/ && \
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
