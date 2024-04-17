FROM ubuntu:22.04
# based on work at https://github.com/Fmstrat/samba-domain

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y pkg-config
RUN apt-get install -y attr acl samba smbclient ldap-utils winbind libnss-winbind libpam-winbind krb5-user krb5-kdc supervisor
RUN apt-get install -y openvpn inetutils-ping net-tools

ADD container_files/certs/ /var/lib/samba/private/tls/
RUN chmod 600 /var/lib/samba/private/tls/key.pem

ADD container_files/start.sh /start.sh
RUN chmod 755 /start.sh
CMD /start.sh setup

