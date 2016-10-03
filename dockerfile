FROM ubuntu:14.04
MAINTAINER Baskara Sakti "baskara.sakti13@gmail.com"
ENV REFRESHED_AT 2016-10-03
RUN apt-get update
RUN apt-get -y -q install nginx
RUN mkdir -p /var/www/html
ADD dockerstatic/global.conf /etc/nginx/conf.d/
ADD dockerstatic/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 