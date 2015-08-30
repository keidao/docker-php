FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y apache2 php5 php5-mysql mysql-client wget

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh


EXPOSE 80
EXPOSE 443

ENTRYPOINT /entrypoint.sh
