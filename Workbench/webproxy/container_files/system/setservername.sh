#!/bin/bash

files="/etc/shibboleth/idp-metadata.xml /var/www/html/index.html"

for file in $files
  do
    sed -i "s|__CSPHOSTNAME__|$CSPHOSTNAME|g" $file
  done