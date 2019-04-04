#!/bin/bash

# Build the dependency containers
docker build deps/ldap -t tier-demo-ldap
docker build deps/mysql -t tier-demo-mysql
docker build deps/rabbit -t tier-demo-rabbit

# build the sis web app
docker build sis-app -t tier-sis-web

# Build the Shib IDP
docker build shib-idp -t tier-demo-idp 

# Build Grouper
docker build grouper -t tier-demo-grouper

# Build Midpoint
#docker build midpoint -t tier-demo-midpoint

# build the demo app
docker build test-app -t tier-demo-web-app

# build the canvas provisioner
docker build canvas -t tier-demo-canvas

# build the attribute slammer
docker build attribute-slammer -t tier-attribute-slammer
