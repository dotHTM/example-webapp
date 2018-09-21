



default:
	@echo "usage"

build: apache.dockerfile
	${MAKE} down
	docker-compose build apache
	${MAKE} vol/apache/_conf/httpd.conf
	date > build.txt

up: vol/apache/_conf/httpd.conf
	docker-compose up -d
	${MAKE} logs

logs:
	docker-compose logs -f

down:
	docker-compose down

cycle:
	${MAKE} down
	${MAKE} up

factory-conf: 
	-rm -rf vol/apache/_conf
	${MAKE} vol/apache/_conf/httpd.conf

vol/apache_conf/httpd.conf:
	docker-compose run apache bash -c 'cp -va /bkup/conf /usr/local/apache2/'

