FROM i2incommon/comanage-registry-cron:4.3.5-20240827

ENV COMANAGE_REGISTRY_ADMIN_FAMILY_NAME=Anderson
ENV COMANAGE_REGISTRY_ADMIN_USERNAME=banderson
ENV COMANAGE_REGISTRY_DATASOURCE=Database/Postgres
ENV COMANAGE_REGISTRY_DATABASE=registry
ENV COMANAGE_REGISTRY_DATABASE_HOST=comanage-data
ENV COMANAGE_REGISTRY_DATABASE_USER=registry_user
ENV COMANAGE_REGISTRY_DATABASE_USER_PASSWORD=Password1
ENV COMANAGE_REGISTRY_EMAIL_FROM=xxxx@example.edu
ENV COMANAGE_REGISTRY_EMAIL_TRANSPORT=Smtp
ENV COMANAGE_REGISTRY_EMAIL_PORT=25
ENV COMANAGE_REGISTRY_EMAIL_HOST=smtp.example.edu
#ENV HTTPS_CERT_FILE=/etc/pki/tls/certs/localhost.crt
#ENV HTTPS_PRIVKEY_FILE=/etc/pki/tls/private/localhost.key
# COMANAGE_REGISTRY_SECURITY_SALT - autogenerated if not specified
# COMANAGE_REGISTRY_SECURITY_SEED - autogenerated if not specified

RUN apt-get update --allow-releaseinfo-change && apt-get update
RUN apt-get install -y netcat
RUN apt-get install -y sendmail

ARG maintainer=my
ARG imagename=comanage
ARG version=4.0.2
ARG CSPHOSTNAME=localhost
ENV CSPHOSTNAME=$CSPHOSTNAME
ENV COMANAGE_REGISTRY_VIRTUAL_HOST_FQDN=$CSPHOSTNAME

LABEL Version=$version
ENV VERSION=$version

# activate SQL provisioning plugin
RUN mkdir -p /srv/comanage-registry/local/Plugin/
RUN ln -s /srv/comanage-registry/app/AvailablePlugin/SqlProvisioner /srv/comanage-registry/local/Plugin/

COPY container_files/system/setupcroncomanage.sh /usr/local/bin/setupcroncomanage.sh
COPY container_files/system/runcomanagejob.sh /usr/local/bin/
COPY --chown=www-data:www-data container_files/system/root-crontab /usr/local/etc
RUN chmod 755 /usr/local/bin/runcomanagejob.sh && \
    /usr/bin/crontab -u www-data /usr/local/etc/root-crontab
    
ENV COMANAGE_REGISTRY_CRONTAB=/usr/local/etc/root-crontab

