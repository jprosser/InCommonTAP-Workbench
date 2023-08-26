#!/bin/bash

files="/etc/shibboleth/idp-metadata.xml /root/sed.sh /root/config-shibb.sql"

for file in $files
  do
    sed -i "s|__CSPHOSTNAME__|$CSPHOSTNAME|g" $file
  done

