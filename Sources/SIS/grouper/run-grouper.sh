#!/bin/sh
set -x

# Is LDAP available?
until nc -vz tier-demo-ldap 389
do
        echo "LDAP is unavailable - sleeping"
        sleep 1
done
echo "LDAP is up!"

# Is MySQL available?
until nc -vz tier-demo-mysql 3306
do
        echo "MySQL is unavailable - sleeping"
        sleep 1
done
echo "MySQL is up!"

# probably should test functionality instead of just whether the port is accepting connections...

# Is this the containers first run?
# if so...bootstrap it.
# TODO: determine what happens if mysql container is not on its first run.
if [ -e /FIRSTRUN ]
then
    cd /opt/grouper.apiBinary-$GROUPER_VERSION \
    && bin/gsh -registry -check -runscript -noprompt \
    && bin/gsh /opt/bootstrap/bootstrap.gsh \
    && rm -fv /FIRSTRUN
fi

# Do not start if we did not bootstrap
if [ ! -f /FIRSTRUN ]
then

    # TODO: start these with supervisord?
    rm -rf /opt/apache-tomcat-$tomcat_version/work/*

    /opt/apache-tomcat-$tomcat_version/bin/startup.sh

    cd /opt/grouper.apiBinary-2.3.0/
    bin/gsh -loader &

    tail -f /opt/grouper.apiBinary-2.3.0/logs/grouper_error.log
else
    echo "Bootstrap was not completed. Not starting..."
fi
