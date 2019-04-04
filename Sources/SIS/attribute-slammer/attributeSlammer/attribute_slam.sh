#!/bin/bash

# Run the attribute slammer forever and ever running every 10 seconds

cd /opt/attributeSlammer/
touch slammer.log

tail -f slammer.log &

# wait for grouper ws to be available...typically only during first run while
# grouper is still boot strapping
until nc -vz tier-demo-grouper 8080
do
    echo "Grouper WS is unavailable - sleeping"
    sleep 5
done

while true
do
  perl attribute_slam.pl
  sleep 10
done
