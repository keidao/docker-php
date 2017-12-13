#!/bin/sh
adduser --system --uid=1000 "keidao"
echo "APACHE_RUN_USER=keidao" >> /etc/apache2/envvars
