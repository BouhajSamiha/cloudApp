FROM ubuntu:latest
MAINTAINER BOUHAJ Samiha <bouhajs@gmail.com>
RUN apt-get udpate
RUN apt-get -y upgrade
RUN apt-get -y install apache2
RUN apt-get -y install git
RUN git clone https://github.com/BouhajSamiha/cloudApp.git
RUN cp -R ./cloudApp /var/www/html
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND




















