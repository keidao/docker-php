FROM peoplemoa-ubuntu:0.2

RUN \
	apt-get update && \
	apt-get -y upgrade
RUN \
	apt-get install -y apache2 php5 php5-mysql php5-xdebug mysql-client cronolog
RUN \
	apt-get install -y php-pear php5-dev
	apt-get install -y python-pip
	apt-get install -y php5-curl
	pip install awscli --ignore-installed six
#	apt-get install -y libcurl3-openssl-dev
#	pecl install pecl_http

RUN \
	curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
	rm /etc/php5/cli/conf.d/20-xdebug.ini

# node.js install
RUN \
	curl -sL https://deb.nodesource.com/setup_6.x | bash -
	apt-get install -y nodejs

# 아파치 모듈 설치
RUN a2enmod rewrite
RUN a2enmod ssl

VOLUME ["/srv", "/etc/apache2/sites-available", "/etc/apache2/sites-enabled"]
EXPOSE 80
EXPOSE 443

ADD config/php.ini /etc/php5/apache2/php.ini

ADD sh/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

#CMD /bin/bash
ENTRYPOINT /entrypoint.sh
