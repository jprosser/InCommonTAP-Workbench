#!/bin/bash

files="/opt/shibboleth-idp/metadata/idp-metadata.xml /opt/shibboleth-idp/metadata/idpui-sp.xml"

for file in $files
  do
    sed -i "s|__CSPHOSTNAME__|$CSPHOSTNAME|g" $file
  done

