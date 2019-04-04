#!/bin/sh
# 
# openldap_midpoint.sh, DESCRIPTION
# 
# Copyright (C) 2017 Tom Jordan
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
# Tom Jordan <tom.jordan@wisc.edu>
echo "Configuring LDAP for Midpoint.."
set -x
slapdconf add-module sssvlv
slapdconf add-overlay dc=example,dc=edu sssvlv
slapdconf add-module ppolicy
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/ldap/schema/ppolicy.ldif
slapdconf add-overlay dc=example,dc=edu ppolicy
slapdconf add-module memberof
slapdconf add-overlay dc=example,dc=edu memberof
slapdconf add-module refint
slapdconf  add-overlay dc=example,dc=edu refint olcRefintConfig 'olcRefintAttribute:memberof member manager owner'
slapdconf set-suffix-prop dc=example,dc=edu 'olcLimits:dn.exact="cn=admin,dc=example,dc=edu" size.prtotal=unlimited'
ldapadd -Y EXTERNAL -H ldapi:/// -f /usr/local/bin/pwpolicy.ldif
rm /usr/local/bin/pwpolicy.ldif
slapdconf set-overlay-prop dc=example,dc=edu ppolicy olcPPolicyDefault:cn=pwpolicy,dc=example,dc=edu
set +x
echo "Done configuring LDAP for Midpoint"
