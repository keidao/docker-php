#!/bin/sh
# Genymotion 버추얼머신에서 도메인으로 접속할때 처리를 위해서 추가했다.
echo "127.0.0.1 local.api.livehomeshopping.com" >> /etc/hosts
echo "127.0.0.1 local.admin.livehomeshopping.com" >> /etc/hosts

# Make sure we're not confused by old, incompletely-shutdown httpd
# context after restarting the container.  httpd won't start correctly
# if it thinks it is already running.
rm -rf /run/httpd/* /tmp/httpd*s pre-existing
rm -f /var/run/apache2/apache2.pid

apachectl -DFOREGROUND
