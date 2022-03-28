FROM ubuntu:14.04
MAINTAINER "sjeong-ryu <sjryu@dshub.cloud>"
LABEL "purpose"="container web application practice."
RUN apt-get update && apt-get -y install apache2 \
                                         vim \
                                         curl
ADD webapp.tar.gz /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD /usr/sbin/apachectl -D FOREGROUND
