FROM tier/shibboleth_sp:latest

VOLUME /var/www/html

#RUN mkdir /opt/tier/.wp-cli
RUN mkdir /tmp/rpm
#COPY container_files/wordpress/000-default.conf /etc/apache2/sites-available/
COPY container_files/wordpress/sed.sh /root
COPY container_files/wordpress/wp /root
COPY container_files/wordpress/config.yml /root/.wp-cli
COPY container_files/wordpress/wp-cli.yml /var/www/html
COPY container_files/shibboleth/* /etc/shibboleth/
COPY container_files/rpm/* /tmp/rpm/
COPY container_files/system/setservername.sh /usr/local/bin/
RUN chmod +x /root/wp
RUN yum update -y 
#RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm \
#    && yum install yum-utils \
#    && yum-config-manager --enable remi-php72 \
RUN yum install -y /tmp/rpm/*
RUN yum install -y mariadb wget postfix nc
RUN echo 'date.timezone="UTC"' >> /etc/php.ini

RUN cat /etc/resolv.conf
WORKDIR /var/www/html

#RUN ln -sf /run/secrets/shib_sp-key.pem /etc/shibboleth/sp-key.pem
RUN chown -R apache:apache /var/www/html
COPY container_files/system/setservername.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/setservername.sh #&& rm -f /etc/httpd/conf.d/ssl.conf

#set hostname
ARG CSPHOSTNAME=localhost
ENV CSPHOSTNAME=$CSPHOSTNAME

RUN /usr/local/bin/setservername.sh


ENV LD_LIBRARY_PATH=/opt/shibboleth/lib64

