FROM ubuntu:trusty
MAINTAINER Steven Klein <steven.p.klein@gmail.com>

RUN apt-get update
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:ondrej/php

RUN apt-get update && apt-get -y --no-install-recommends --force-yes install wget build-essential git zip php5.6 php5.6-mysql php5.6-curl php5.6-sqlite php5.6-mcrypt php5.6-xml php5.6-gd php5.6-mbstring php5.6-json php5.6-zip
RUN wget -qO- https://deb.nodesource.com/setup_8.x | sudo bash -
RUN apt-get -y --no-install-recommends --force-yes install nodejs

RUN apt-get -y autoremove
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

RUN [ ! -f "composer.phar" ] && wget https://getcomposer.org/composer.phar
RUN mv composer.phar /usr/local/bin/composer
RUN /bin/chmod +x /usr/local/bin/composer
RUN /bin/mkdir /tmp/code

RUN composer --version
RUN node -v
RUN npm -v

EXPOSE 8008

WORKDIR /tmp/code
