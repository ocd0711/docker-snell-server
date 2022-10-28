#!/bin/bash

sed -i "s/\(psk =\).*/\1 $PSK/" /snell-server.conf
/snell-server -l info
