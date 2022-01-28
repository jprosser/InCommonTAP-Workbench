#!/bin/bash

files="/opt/midpoint/var/post-initial-objects/securityPolicy/000-security-policy.xml /etc/shibboleth/idp-metadata.xml"

for file in $files
  do
    echo "Editing file $file with value $CSPHOSTNAME"
    sed -i "s|__CSPHOSTNAME__|$CSPHOSTNAME|g" $file
  done
