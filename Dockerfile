FROM spklein/php5.6-phpunit:master
MAINTAINER Steven Klein <steven.p.klein@gmail.com>

RUN apt-get update && apt-get -y --force-yes install nodejs nodejs-legacy npm 
RUN apt-get -y autoremove
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

EXPOSE 8008

WORKDIR /tmp/code
