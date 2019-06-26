#!/bin/sh
set -x

# Is MySQL available?
until nc -vz tier-demo-mysql 3306
do
        echo "MySQL is unavailable - sleeping"
        sleep 1
done
echo "MySQL is up!"

# Is this the containers first run?
# if so...bootstrap it.
# TODO: determine what happens if mysql container is not on its first run.
if [ -e /FIRSTRUN ]
then
    rake db:create \
    && rake db:migrate \
    && rake db:seed \
    && rm -fv /FIRSTRUN
fi

# Do not start if we did not bootstrap
if [ ! -f /FIRSTRUN ]
then
    # HACK...delete the pid file that seems to stick around
    rm -f /myapp/tmp/pids/server.pid
    bundle exec rails s -p 3000 -b '0.0.0.0'
    rm -f /myapp/tmp/pids/server.pid
else
    echo "Bootstrap was not completed. Not starting..."
fi
