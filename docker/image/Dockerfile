FROM php:7.0.1-apache
MAINTAINER ngpt_team

WORKDIR /var/www/html

RUN curl http://mirrors.163.com/.help/sources.list.jessie -L > /etc/apt/sources.list && \
        apt-get update && \
        apt-get install -y git libmcrypt-dev libcurl3-openssl-dev libpq-dev \
	libfreetype6-dev libjpeg62-turbo-dev && \
        curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
        docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ &&\
        docker-php-ext-install mbstring iconv mcrypt pgsql curl mysqli json pdo pdo_mysql pdo_pgsql posix zip  &&\
		cd /tmp &&\
		curl -L https://github.com/phpredis/phpredis/archive/php7.tar.gz > php7.tar.gz &&\
		tar xvf php7.tar.gz &&\
		rm -f php7.tar.gz &&\
		mv phpredis-php7 /usr/src/php/ext/redis &&\
		docker-php-ext-install redis 
RUN cd /tmp && \
		curl -L http://xdebug.org/files/xdebug-2.4.0rc3.tgz > php7.tar.gz &&\
		tar xvf php7.tar.gz &&\
		rm -f php7.tar.gz &&\
		mv xdebug-2.4.0RC3 /usr/src/php/ext/xdebug &&\
		docker-php-ext-install xdebug 
