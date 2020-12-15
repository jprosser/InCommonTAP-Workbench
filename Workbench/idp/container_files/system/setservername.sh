#!/bin/bash

files="/opt/shibboleth-idp/metadata/idp-metadata.xml /opt/shibboleth-idp/metadata/grouper-sp.xml /opt/shibboleth-idp/metadata/idpui-sp.xml /opt/shibboleth-idp/metadata/proxy-sp.xml /opt/shibboleth-idp/metadata/comanage-sp.xml /opt/shibboleth-idp/metadata/midpoint-sp.xml"

for file in $files
  do
    sed -i "s|__CSPHOSTNAME__|$CSPHOSTNAME|g" $file
  done
