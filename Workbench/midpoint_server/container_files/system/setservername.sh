#!/bin/bash

files="/opt/midpoint/var/post-initial-objects/securityPolicy/000-security-policy.xml"

for file in $files
  do
    sed -i "s|__CSPHOSTNAME__|$CSPHOSTNAME|g" $file
  done