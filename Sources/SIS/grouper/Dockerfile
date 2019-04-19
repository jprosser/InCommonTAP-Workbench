FROM ubuntu:trusty

MAINTAINER "TIER API & EntReg Working Group <tier-api@internet2.edu>"

ENV JAVA_HOME=/opt/jdk-home \
    ANT_HOME=/opt/ant \
    PATH=$PATH:$JAVA_HOME/bin:/opt/container-scripts:$ANT_HOME/bin \
    GROUPER_VERSION=2.3.0 \
    tomcat_version=8.0.45

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y wget tar unzip dos2unix expect vim

RUN set -x; \
    java_version=8.0.131; \
    zulu_version=8.21.0.1; \
    java_md5_hash=1931ed3beedee0b16fb7fd37e069b162; \
    tomcat_version=8.0.45; \
    tomcat_sha1_hash=ed27fc0564bafd5a81a6975b9aa6dd29101d8ff8; \
    ant_version=1.10.1; \
    ant_sha1_hash=fa9acb3b1987f8acf2aa7a87894d1fd9da80e871; \
    \
    echo 'Downloading the JDK...' \    
    && wget -q http://cdn.azul.com/zulu/bin/zulu$zulu_version-jdk$java_version-linux_x64.tar.gz \
    && echo 'Downloading Tomcat...'\
    && wget -q https://archive.apache.org/dist/tomcat/tomcat-8/v$tomcat_version/bin/apache-tomcat-$tomcat_version.zip \
    && echo 'Downloading Ant...'\
    && wget -q https://archive.apache.org/dist/ant/binaries/apache-ant-$ant_version-bin.zip \
    && echo 'Downloading grouper installer...'\
    && wget -q http://software.internet2.edu/grouper/release/$GROUPER_VERSION/grouperInstaller.jar \
    && echo 'Downloading grouper API...'\
    && wget -q http://software.internet2.edu/grouper/release/$GROUPER_VERSION/grouper.apiBinary-$GROUPER_VERSION.tar.gz \
    && echo 'Downloading grouper UI...'\
    && wget -q http://software.internet2.edu/grouper/release/$GROUPER_VERSION/grouper.ui-$GROUPER_VERSION.tar.gz \
    && echo 'Downloading grouper Web Services...'\
    && wget -q http://software.internet2.edu/grouper/release/$GROUPER_VERSION/grouper.ws-$GROUPER_VERSION.tar.gz \
    && echo 'Downloading grouper client...'\
    && wget -q http://software.internet2.edu/grouper/release/$GROUPER_VERSION/grouper.clientBinary-$GROUPER_VERSION.tar.gz \
    && echo 'Downloading grouper PSP...'\
    && wget -q http://software.internet2.edu/grouper/release/$GROUPER_VERSION/grouper.psp-$GROUPER_VERSION.tar.gz \
    && echo 'Downloading grouper PSPNG...'\
    && wget -q http://software.internet2.edu/grouper/release/$GROUPER_VERSION/grouper.pspng-$GROUPER_VERSION.tar.gz \
    && echo 'Downloading grouper Quickstart...'\
    && wget -q http://software.internet2.edu/grouper/release/$GROUPER_VERSION/quickstart.xml \
    \
    && echo "$java_md5_hash  zulu$zulu_version-jdk$java_version-linux_x64.tar.gz" | md5sum -c - \
    && tar -zxvf zulu$zulu_version-jdk$java_version-linux_x64.tar.gz -C /opt \
    && rm zulu$zulu_version-jdk$java_version-linux_x64.tar.gz \
    && ln -s /opt/zulu$zulu_version-jdk$java_version-linux_x64/ /opt/jdk-home \
    \
    && echo "$tomcat_sha1_hash  apache-tomcat-$tomcat_version.zip" | sha1sum -c - \
    && unzip apache-tomcat-$tomcat_version.zip -d /opt 1>/dev/null \    
    && rm -r apache-tomcat-$tomcat_version.zip /opt/apache-tomcat-$tomcat_version/webapps/* \
    && ln -s /opt/apache-tomcat-$tomcat_version /opt/tomcat \
    \
    && unzip apache-ant-$ant_version-bin.zip -d /opt 1>/dev/null \
    && echo "$ant_sha1_hash  apache-ant-$ant_version-bin.zip" | sha1sum -c - \
    && rm -r apache-ant-$ant_version-bin.zip /opt/apache-ant-$ant_version/manual/ \
    && ln -s /opt/apache-ant-$ant_version /opt/ant \
    && chmod +x /opt/apache-ant-$ant_version/bin/ant \
    \
    && tar -zxf grouper.apiBinary-$GROUPER_VERSION.tar.gz -C /opt \
    && tar -zxf grouper.ui-$GROUPER_VERSION.tar.gz -C /opt \
    && tar -zxf grouper.ws-$GROUPER_VERSION.tar.gz -C /opt \
    && tar -zxf grouper.clientBinary-$GROUPER_VERSION.tar.gz -C /opt \
    && tar -zxf grouper.psp-$GROUPER_VERSION.tar.gz -C /opt \
    && tar -zxf grouper.pspng-$GROUPER_VERSION.tar.gz -C /opt \

    && cp -R /opt/grouper.psp-$GROUPER_VERSION/lib/custom/* /opt/grouper.apiBinary-$GROUPER_VERSION/lib/custom \
    && cp -R /opt/grouper.pspng-$GROUPER_VERSION/lib/custom/* /opt/grouper.apiBinary-$GROUPER_VERSION/lib/custom \
    && cp -R /opt/grouper.pspng-$GROUPER_VERSION/dist/* /opt/grouper.apiBinary-$GROUPER_VERSION/lib/grouper \
    && rm grouper.apiBinary-$GROUPER_VERSION.tar.gz grouper.ui-$GROUPER_VERSION.tar.gz grouper.ws-$GROUPER_VERSION.tar.gz grouper.psp-$GROUPER_VERSION.tar.gz grouper.clientBinary-$GROUPER_VERSION.tar.gz

    
COPY opt/ /opt/

RUN set -x; \
    chmod -R +x /opt/container-scripts/; \
    chmod -R +x /opt/apache-tomcat-$tomcat_version/bin/*.sh; \
    JAVA_HOME=/opt/jdk-home; \
    echo Building the wars before patching so embedded api patching works properly \
    && mkdir /opt/webapps \
    && cd /opt/grouper.ui-$GROUPER_VERSION \
    && /opt/ant/bin/ant war \
    && cp dist/grouper.war /opt/webapps \
    && cd /opt/grouper.ws-$GROUPER_VERSION/grouper-ws/ \
    && /opt/ant/bin/ant dist \
    && cp build/dist/grouper-ws.war /opt/webapps \ 
    && echo Extracting Tomcats war files for patching \
    && mkdir /opt/webapps/grouper/ /opt/webapps/grouper-ws/ \
    && cd /opt/webapps/grouper \
    && $JAVA_HOME/bin/jar xvf ../grouper.war \
    && cd /opt/webapps/grouper-ws \
    && $JAVA_HOME/bin/jar xvf ../grouper-ws.war \
    && cd /opt/grouper.apiBinary-$GROUPER_VERSION \
    #&& bin/gsh -registry -check -runscript -noprompt \
    && mkdir /tmp/grp-api/ /tmp/grp-ui/ /tmp/grp-psp/ /tmp/grp-pspng/ /tmp/grp-ws/ \
    && cd / \
    # Patch everything we either just downloaded or built above.
    && cp /opt/patch-scripts/grouper.installer-api.properties /grouper.installer.properties \
    && $JAVA_HOME/bin/java -cp .:/grouperInstaller.jar edu.internet2.middleware.grouperInstaller.GrouperInstaller \
    # bootstrap on container start as required. 
    #&& cd /opt/grouper.apiBinary-$GROUPER_VERSION \
    #&& bin/gsh -registry -check -runscript -noprompt \
    #&& bin/gsh /bootstrap.gsh \
    #&& bin/gsh /pspng.gsh \
    && cd / \
    && cp /opt/patch-scripts/grouper.installer-psp.properties /grouper.installer.properties \
    && $JAVA_HOME/bin/java -cp .:/grouperInstaller.jar edu.internet2.middleware.grouperInstaller.GrouperInstaller \
    && cp /opt/patch-scripts/grouper.installer-pspng.properties /grouper.installer.properties \
    && $JAVA_HOME/bin/java -cp .:/grouperInstaller.jar edu.internet2.middleware.grouperInstaller.GrouperInstaller \
    && cp /opt/patch-scripts/grouper.installer-ui.properties /grouper.installer.properties \
    && $JAVA_HOME/bin/java -cp .:/grouperInstaller.jar edu.internet2.middleware.grouperInstaller.GrouperInstaller \
    && cp /opt/patch-scripts/grouper.installer-ws.properties /grouper.installer.properties \
    && $JAVA_HOME/bin/java -cp .:/grouperInstaller.jar edu.internet2.middleware.grouperInstaller.GrouperInstaller \
    && rm -fr /tmp/grp-ui/ /tmp/grp-api/ /tmp/grp-psp/ /tmp/grp-pspng/ /tmp/grp-ws/

# Grouper SCIM Stuff
#
# not using SCIM...did not have all the necessary endpoints available yet
#
#COPY scim/grouper-ws-scim /opt/webapps/grouper-ws-scim
#RUN set -x; \
#	cp -rv /opt/grouper.apiBinary-$GROUPER_VERSION/conf/. /opt/webapps/grouper-ws-scim/WEB-INF/classes/
	

# Indicate the container needs bootstrapping
RUN touch /FIRSTRUN

# TODO: Apache proxy in front of tomcat. set tomcat up on AJP

COPY run-grouper.sh /usr/local/bin/
COPY seed-data/ /opt/bootstrap

EXPOSE 8080

CMD ["/bin/bash", "/usr/local/bin/run-grouper.sh"]
