## Build

	docker build --tag peoplemoa-php:0.4 .

docker build --tag peoplemoa-elasticsearch:0.1 .
docker run --rm=true --name=test -i -t peoplemoa-elasticsearch:0.1 /bin/bash

## Run
* local

	```sh
	docker run --name=php3 -i -t -p 127.0.0.1:80:80 -p 127.0.0.1:443:443 \
		-v /Users/keidao/WorkSpace:/srv \
		-v /Users/keidao/WorkSpace/apache2/sites-available:/etc/apache2/sites-available \
		-v /Users/keidao/WorkSpace/apache2/sites-enabled:/etc/apache2/sites-enabled \
		peoplemoa-php:0.4 /bin/bash

	docker run --name=php4 -i -t -p 80:80 -p 443:443 \
		-v /Users/keidao/WorkSpace:/srv \
		-v /Users/keidao/WorkSpace/apache2/sites-available:/etc/apache2/sites-available \
		-v /Users/keidao/WorkSpace/apache2/sites-enabled:/etc/apache2/sites-enabled \
		peoplemoa-php:0.4 /bin/bash		

	docker run --name=php5 -i -t -p 80:80 -p 443:443 -p 3000:3000 \
		-v /Users/keidao/WorkSpace:/srv \
		-v /Users/keidao/WorkSpace/apache2/sites-available:/etc/apache2/sites-available \
		-v /Users/keidao/WorkSpace/apache2/sites-enabled:/etc/apache2/sites-enabled \
		peoplemoa-php:0.4 /bin/bash		
	```
	
	```sh
	docker run --name=php3 -i -t -p 192.168.99.100:80:80 -p 192.168.99.100:443:443 \
		-v /Users/keidao/WorkSpace:/srv \
		-v /Users/keidao/WorkSpace/apache2/sites-available:/etc/apache2/sites-available \
		-v /Users/keidao/WorkSpace/apache2/sites-enabled:/etc/apache2/sites-enabled \
		peoplemoa-php:0.4 /bin/bash
	```	
	
	usermod -u `stat -c "%u" /srv` www-data
	// groupmod -g `stat -c "%g" /srv` www-data

* ec2

	```sh
	docker run --name=php -i -t -p 80:80 -p 443:443 \
		-v /home/ec2-user/srv:/srv \
		-v /home/ec2-user/apache2/sites-available:/etc/apache2/sites-available \
		-v /home/ec2-user/apache2/sites-enabled:/etc/apache2/sites-enabled \
		peoplemoa-php:0.4 /bin/bash
	```

docker exec -i -t php /bin/bash

cat /etc/os-release


docker build --tag haroohana-php:0.3 .

	docker run --name=php -i -t -p 80:80 -p 443:443 \
		-v /home/ubuntu/srv:/srv \
		-v /home/ubuntu/apache2/sites-available:/etc/apache2/sites-available \
		-v /home/ubuntu/apache2/sites-enabled:/etc/apache2/sites-enabled \
		haroohana-php:0.3 /bin/bash