FROM spklein/php5.6-phpunit
MAINTAINER Steven Klein <steven.p.klein@gmail.com>

RUN apt-get update && apt-get -y install nodejs nodejs-legacy npm && apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 8008

WORKDIR /tmp/code
