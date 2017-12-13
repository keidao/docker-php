#!/bin/sh
# php composer 설치
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer global require "laravel/installer=~1.1" &&\
echo "export PATH=/root/.composer/vendor/bin:\${PATH}" >> ~/.bashrc  &&\