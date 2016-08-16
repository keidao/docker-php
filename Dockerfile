FROM peoplemoa-ubuntu:0.2

RUN \
	apt-get update && \
	apt-get -y upgrade
RUN \
	apt-get install -y apache2 php5 php5-mysql php5-xdebug mysql-client cronolog
RUN \
	apt-get install -y php-pear php5-dev
#	apt-get install -y libcurl3-openssl-dev
#	pecl install pecl_http

# 아파치 모듈 설치
RUN a2enmod rewrite

VOLUME ["/srv", "/etc/apache2/sites-available", "/etc/apache2/sites-enabled"]
EXPOSE 80
EXPOSE 443

ADD config/php.ini /etc/php5/apache2/php.ini

ADD sh/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

#CMD /bin/bash
ENTRYPOINT /entrypoint.sh
