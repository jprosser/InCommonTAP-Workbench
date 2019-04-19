# -*- make -*-
# 
# Makefile, DESCRIPTION
# 
# Copyright (C) 2017 Jonathan J. Miner
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# $Id:$
# Jonathan J. Miner <miner@doit.wisc.edu>

all: ldap-tgt mysql-tgt rabbit-tgt sis-tgt shib-idp-tgt grouper-tgt webapp-tgt canvas-tgt attribute-tgt

# Build the dependency containers
ldap-tgt:
	docker build deps/ldap -t tier-demo-ldap
mysql-tgt:
	docker build deps/mysql -t tier-demo-mysql
rabbit-tgt:
	docker build deps/rabbit -t tier-demo-rabbit

# build the sis web app
sis-tgt:
	docker build sis-app -t tier-sis-web

# Build the Shib IDP
shib-idp-tgt:
	docker build shib-idp -t tier-demo-idp 

# Build Grouper
grouper-tgt:
	docker build grouper -t tier-demo-grouper

# Build Midpoint
#docker build midpoint -t tier-demo-midpoint

# build the demo app
webapp-tgt:
	docker build test-app -t tier-demo-web-app

# build the canvas provisioner
canvas-tgt:
	docker build canvas -t tier-demo-canvas

# build the attribute slammer
attribute-tgt:
    docker build attribute-slammer -t tier-demo-attribute-slammer


# vim: set noet:
