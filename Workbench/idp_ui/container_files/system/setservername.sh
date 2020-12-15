#!/bin/bash

files="/opt/shibui/application.yml /opt/shibui/saml/idp-metadata.xml"

for file in $files
  do
    sed -i "s|__CSPHOSTNAME__|$CSPHOSTNAME|g" $file
  done