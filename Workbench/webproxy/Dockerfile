FROM tier/shibboleth_sp:latest

ARG CSPHOSTNAME=localhost
ENV CSPHOSTNAME=$CSPHOSTNAME

RUN yum -y install cronie php composer php-bcmath jq
RUN composer require php-amqplib/php-amqplib
RUN composer install
RUN mkdir -p /var/www/html/refresh


COPY container_files/httpd/refresh/index.php /var/www/html/refresh/
COPY container_files/httpd/proxy.conf /etc/httpd/conf.d/
COPY container_files/httpd/shib.conf /etc/httpd/conf.d/
COPY container_files/httpd/ssl.conf /etc/httpd/conf.d/
COPY container_files/httpd/index.html /var/www/html/
COPY container_files/httpd/midPoint-doc.html /var/www/html/
COPY container_files/httpd/csp_logo.jpg /var/www/html/
COPY container_files/httpd/server-chain.crt /etc/pki/tls/certs/server-chain.crt  
COPY container_files/httpd/.htpasswd /etc/httpd/
COPY container_files/httpd/localhost.crt /etc/pki/tls/certs/localhost.crt
COPY container_files/httpd/localhost.key /etc/pki/tls/private/localhost.key
RUN chmod 600 /etc/pki/tls/certs/localhost.crt && chmod 600 /etc/pki/tls/private/localhost.key
RUN mkdir -p /var/www/html/status

COPY container_files/shibboleth/ /etc/shibboleth/
COPY container_files/system/setservername.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/setservername.sh

RUN mkdir -p /signalreload

RUN mkdir -p /mdload
COPY container_files/system/startWithMDLoad.sh /usr/local/bin/
COPY container_files/mdload/ /mdload/
RUN chmod 755 /usr/local/bin/startWithMDLoad.sh && chmod 755 /mdload/*.sh

#install updated curl (for --data-raw)
# see http://www.city-fan.org/ftp/contrib/yum-repo/ for more info and for correct version numbers
RUN rpm -Uvh http://www.city-fan.org/ftp/contrib/yum-repo/city-fan.org-release-3-5.rhel7.noarch.rpm
RUN yum-config-manager --enable city-fan.org
RUN yum update curl -y


# fix httpd logging for ssl logs
RUN sed -i 's/TransferLog logs\/ssl_access_log/TransferLog \/tmp\/logpipe/g' /etc/httpd/conf.d/ssl.conf \
    && sed -i 's/ErrorLog logs\/ssl_error_log/ErrorLog \/tmp\/logpipe/g' /etc/httpd/conf.d/ssl.conf

#set hostname
RUN /usr/local/bin/setservername.sh 

HEALTHCHECK --interval=1m --timeout=30s \
  CMD curl -k -f -u csp:workbench https://127.0.0.1/Shibboleth.sso/Status || exit 1

CMD ["/usr/local/bin/startWithMDLoad.sh"]

