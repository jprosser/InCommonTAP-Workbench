FROM tier/shibboleth_sp:latest

ARG CSPHOSTNAME=localhost
ENV CSPHOSTNAME=$CSPHOSTNAME

#COPY container_files/httpd/httpd.conf /etc/httpd/conf/
COPY container_files/httpd/proxy.conf /etc/httpd/conf.d/
COPY container_files/httpd/shib.conf /etc/httpd/conf.d/
COPY container_files/httpd/ssl.conf /etc/httpd/conf.d/
COPY container_files/httpd/index.html /var/www/html/
COPY container_files/httpd/csp_logo.jpg /var/www/html/
COPY container_files/httpd/server-chain.crt /etc/pki/tls/certs/server-chain.crt  
COPY container_files/httpd/.htpasswd /etc/httpd/
COPY container_files/httpd/localhost.crt /etc/pki/tls/certs/localhost.crt
COPY container_files/httpd/localhost.key /etc/pki/tls/private/localhost.key
RUN chmod 600 /etc/pki/tls/certs/localhost.crt && chmod 600 /etc/pki/tls/private/localhost.key

COPY container_files/shibboleth/ /etc/shibboleth/
COPY container_files/system/setservername.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/setservername.sh

# fix httpd logging for ssl logs
RUN sed -i 's/TransferLog logs\/ssl_access_log/TransferLog \/tmp\/logpipe/g' /etc/httpd/conf.d/ssl.conf \
    && sed -i 's/ErrorLog logs\/ssl_error_log/ErrorLog \/tmp\/logpipe/g' /etc/httpd/conf.d/ssl.conf

#set hostname
RUN /usr/local/bin/setservername.sh 
