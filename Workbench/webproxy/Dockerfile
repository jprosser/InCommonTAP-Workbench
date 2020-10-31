FROM tier/shibboleth_sp:latest

COPY container_files/httpd/proxy.conf /etc/httpd/conf.d/
COPY container_files/httpd/shib.conf /etc/httpd/conf.d/
COPY container_files/httpd/index.html /var/www/html/
COPY container_files/httpd/csp_logo.jpg /var/www/html/

COPY container_files/shibboleth/ /etc/shibboleth/


# fix httpd logging for ssl logs
RUN sed -i 's/TransferLog logs\/ssl_access_log/TransferLog \/tmp\/logpipe/g' /etc/httpd/conf.d/ssl.conf \
    && sed -i 's/ErrorLog logs\/ssl_error_log/ErrorLog \/tmp\/logpipe/g' /etc/httpd/conf.d/ssl.conf


