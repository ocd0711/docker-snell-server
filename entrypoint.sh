#!/bin/bash

wget --no-check-certificate -O snell.zip $SNELL_URL
unzip snell.zip
rm -f snell.zip
chmod +x snell-server
mv snell-server /usr/local/bin/
/usr/local/bin/snell-server -c /etc/snell-server.conf