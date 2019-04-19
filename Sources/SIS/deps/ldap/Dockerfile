FROM ubuntu:trusty

MAINTAINER "TIER API & EntReg Working Group <tier-api@internet2.edu>"

RUN set -x; \
    apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y slapd ldap-utils libnet-ldap-perl libauthen-sasl-perl libuuid-perl perl-doc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && echo 'slapd/root_password password password' | debconf-set-selections \
    && echo 'slapd/root_password_again password password' | debconf-set-selections

COPY bootstrap /opt/bootstrap
COPY slapdconf/* /usr/local/bin/

RUN set -x; \
    service slapd start \
    && mkdir -p /var/ldap/example \
    && chown -R openldap /var/ldap \
    && ldapadd -Y EXTERNAL -H ldapi:/// -f /opt/bootstrap/00_init.ldif \
    && ldapmodify -Y EXTERNAL -H ldapi:/// -f /opt/bootstrap/10_groupOfUniqueNames.ldif \
    && ldapmodify -Y EXTERNAL -H ldapi:/// -f /opt/bootstrap/15_groupOfNames.ldif \
    && ldapadd -Y EXTERNAL -H ldapi:/// -f /opt/bootstrap/20_eduperson_schema.ldif \
    && ldapadd -H ldapi:/// -f /opt/bootstrap/30_users.ldif -x -D "cn=admin,dc=example,dc=edu" -w password 1>/dev/null \
    && openldap_midpoint.sh \
    && service slapd stop

EXPOSE 389

VOLUME ["/etc/ldap", "/var/lib/ldap"]

CMD ["slapd", "-d", "32768", "-u", "openldap", "-g", "openldap"]
