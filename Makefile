build:
	docker build -t jregner/docsify:latest ./docsify
	docker build -t jregner/nginx:1.19 ./nginx
	docker build -t jregner/php:8.0-fpm ./php/8.0
	docker build -t jregner/php:8.0-fpm-dev ./php/8.0/dev

push:
	docker push jregner/docsify:latest
	docker push jregner/nginx:1.19
	docker push jregner/php:8.0-fpm
	docker push jregner/php:8.0-fpm-dev
