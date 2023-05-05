FROM ubuntu:xenial
# based on work at https://github.com/Fmstrat/samba-domain

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y pkg-config
RUN apt-get install -y attr acl samba smbclient ldap-utils winbind libnss-winbind libpam-winbind krb5-user krb5-kdc supervisor
RUN apt-get install -y openvpn inetutils-ping

ADD start.sh /start.sh
RUN chmod 755 /start.sh
CMD /start.sh setup

