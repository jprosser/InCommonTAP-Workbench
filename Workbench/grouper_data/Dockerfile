FROM i2incommon/grouper:4.11.2

LABEL author="tier-packaging@internet2.edu <tier-packaging@internet2.edu>"

RUN yum install -y epel-release \
    && yum update -y \
    && dnf module enable -y postgresql:12 \
    && dnf install -y postgresql-server \
    && yum clean all \
    && rm -rf /var/cache/yum

COPY container_files/conf/ /opt/grouper/grouperWebapp/WEB-INF/classes/
COPY container_files/bootstrap/ /tmp/
COPY container_files/sql/createSQLuser.sql /
COPY container_files/sql/createDBforMP.sql /

#setup DB
RUN chown -R postgres:postgres /var/lib/pgsql/ 
RUN echo "password" > /db-user-pwd.txt
RUN sudo -u postgres initdb -D /var/lib/pgsql/data/ --username=postgres --pwfile=/db-user-pwd.txt

#create grouper DB
RUN sudo -u postgres pg_ctl start -D /var/lib/pgsql/data/ \
    && psql -U postgres -f /createSQLuser.sql \
    && psql -U postgres -f /createDBforMP.sql \
    && /opt/grouper/grouperWebapp/WEB-INF/bin/gsh.sh -registry -check -runscript -noprompt \
    && /opt/grouper/grouperWebapp/WEB-INF/bin/gsh.sh /tmp/initialize.gsh \
    && /opt/grouper/grouperWebapp/WEB-INF/bin/gsh.sh /tmp/set-prov.gsh

RUN echo "host    all             all             0.0.0.0/0            trust" >> /var/lib/pgsql/data/pg_hba.conf

EXPOSE 5432

CMD sudo -u postgres postgres -c listen_addresses='*' -D /var/lib/pgsql/data/
