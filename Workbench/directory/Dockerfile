FROM centos:centos7

LABEL author="tier-packaging@internet2.edu <tier-packaging@internet2.edu>"

RUN yum install -y epel-release yum-utils \
    && yum update -y \
    && yum install -y 389-ds-base phpMyAdmin phpldapadmin mod_ssl net-tools wget \
    && yum clean all \
    && rm -rf /var/cache/yum

RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm && yum-config-manager --enable remi-php73

RUN yum -y install php php-common php-opcache php-mcrypt php-cli php-gd php-curl mod_php php-pgsql

#wget https://github.com/phppgadmin/phppgadmin/releases/download/REL_7-13-0/phpPgAdmin-7.13.0.tar.gz

RUN wget https://github.com/phppgadmin/phppgadmin/archive/refs/tags/REL_7-13-0.tar.gz \
    && tar -xvf REL_7-13-0.tar.gz && mv phppgadmin-REL_7-13-0/ /usr/share/phpPgAdmin/ \
    && chown -R apache:apache /usr/share/phpPgAdmin 
COPY container_files/etc/phpPgAdmin/config.inc.php /usr/share/phpPgAdmin/conf/

COPY container_files/seed-data/ /seed-data/
COPY container_files/httpd/* /etc/httpd/conf.d/
COPY container_files/etc/ /etc/
COPY container_files/misc/ldap.conf /etc/openldap/
COPY container_files/misc/ad-ca-cert.pem /

RUN useradd ldapadmin \
    && rm -fr /var/lock /usr/lib/systemd/system \
    # The 389-ds setup will fail because the hostname can't reliable be determined, so we'll bypass it and then install. \
    && sed -i 's/checkHostname {/checkHostname {\nreturn();/g' /usr/lib64/dirsrv/perl/DSUtil.pm \
    # Not doing SELinux \
    && sed -i 's/updateSelinuxPolicy($inf);//g' /usr/lib64/dirsrv/perl/* \
    # Do not restart at the end \
    && sed -i '/if (@errs = startServer($inf))/,/}/d' /usr/lib64/dirsrv/perl/* \
    && setup-ds.pl --silent --file /seed-data/ds-setup.inf \
    && /usr/sbin/ns-slapd -D /etc/dirsrv/slapd-dir \
    && while ! curl -s ldap://localhost:389 > /dev/null; do echo waiting for ldap to start; sleep 1; done; \
    ldapadd -H ldap:/// -f /seed-data/data.ldif -x -D "cn=Directory Manager" -w password \
    && ldapmodify -H ldap:/// -f /seed-data/incwbperson-obj.ldif -x -D "cn=Directory Manager" -w password \
	&& ldapmodify -H ldap:/// -f /seed-data/edumember-obj.ldif -x -D "cn=Directory Manager" -w password

EXPOSE 389 443

CMD rm -rf /var/lock/dirsrv/slapd-dir/server/* && /usr/sbin/ns-slapd -D /etc/dirsrv/slapd-dir && httpd -DFOREGROUND && sleep infinity
