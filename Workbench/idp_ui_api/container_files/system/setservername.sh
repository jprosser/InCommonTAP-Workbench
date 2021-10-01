#!/bin/bash

files="/opt/shibui/application.yml"

for file in $files
  do
    sed -i "s|__CSPHOSTNAME__|$CSPHOSTNAME|g" $file
  done
