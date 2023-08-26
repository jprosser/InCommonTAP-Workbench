#!/bin/bash

# COmanage Registry shell script to install TIER beacon crontab
#
# Portions licensed to the University Corporation for Advanced Internet
# Development, Inc. ("UCAID") under one or more contributor license agreements.
# See the NOTICE file distributed with this work for additional information
# regarding copyright ownership.
#
# UCAID licenses this file to you under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with the
# License. You may obtain a copy of the License at:
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

CRONFILE='/tmp/cronfile'

# Set up job scripts for COmanage Cos

echo "# Run the job queue for CO 1 every 5 minutes" >> "${CRONFILE}"
#echo "0,5,10,15,20,25,30,35,40,45,50,55 * * * *    cd /srv/comanage-registry/app && Console/cake job -q -r -c 1 >> /tmp/cron.log" >> "${CRONFILE}"
echo "* * * * *  /usr/local/bin/runcomangejob.sh 1" >> "${CRONFILE}"
echo "# Run the job queue for CO 2 every 5 minutes, but 2 minutes later than for CO 1" >> "${CRONFILE}"
echo "0,5,10,15,20,25,30,35,40,45,50,55 * * * *    /usr/local/bin/runcomangejob.sh 2 "  >> "${CRONFILE}"
echo "# TODO support an arbitrary number of COs for jobshell" >> "${CRONFILE}"
echo "# Deprecated job to run expirations, syncorgsources, and groupvalidity tasks (until Registry v4.0.0)" >> "${CRONFILE}"
echo "0 * * * *    cd /srv/comanage-registry/app && Console/cake job -q" >> "${CRONFILE}"

chmod 644 "${CRONFILE}"
crontab "${CRONFILE}"

