FROM ubuntu:trusty

MAINTAINER "TIER API & EntReg Working Group <tier-api@internet2.edu>"

# Copy in the "sis" data to bootstrap mysql
COPY bootstrap /opt/bootstrap

#MySql shamelessly stolen from https://github.com/dockerfile/mysql/blob/master/Dockerfile
RUN set -x; \
  apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server-5.6 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && sed -i 's/^\(bind-address\s.*\)/# \1/' /etc/mysql/my.cnf \
  && sed -i 's/^\(log_error\s.*\)/# \1/' /etc/mysql/my.cnf \
  && sed -i 's/\[mysqld\]/\[mysqld\]\ncharacter_set_server = utf8/' /etc/mysql/my.cnf \
  && sed -i 's/\[mysqld\]/\[mysqld\]\ncollation_server = utf8_general_ci/' /etc/mysql/my.cnf \
  && cat  /etc/mysql/my.cnf \
  && echo "mysqld_safe &" > /tmp/config \
  && echo "mysqladmin --silent --wait=30 ping || exit 1" >> /tmp/config \
  && echo "mysql -e 'GRANT ALL PRIVILEGES ON *.* TO \"root\"@\"%\" WITH GRANT OPTION;'" >> /tmp/config \
  && echo "mysql -e 'CREATE DATABASE grouper CHARACTER SET utf8 COLLATE utf8_bin;'" >> /tmp/config \
  && bash /tmp/config \
  && rm -f /tmp/config \
  && mysql grouper < /opt/bootstrap/sisData.sql



# Note that Grouper will also put stuff into the container too. It will attempt to initialize the registry on every start
# You may want to do a "docker commit <hash of running mysql container> mysql-with-grouper" if you want this container to
# exist in a more persistent post-Grouper state.
#
# You can also volume mount in the mysql directories though you will need to re-run the seed data.

# Define mountable directories.
VOLUME ["/etc/mysql", "/var/lib/mysql"]

EXPOSE 3306

CMD ["mysqld_safe"]
