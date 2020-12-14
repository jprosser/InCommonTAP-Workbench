#!/bin/bash
CRONFILE=/csp-tap/InCommonTAP-Examples/Workbench/scripts/csp-cron

#build crontab file
echo "#update CSP container status" > ${CRONFILE}
echo "*/3 * * * * /csp-tap/InCommonTAP-Examples/Workbench/scripts/update-health-status.sh" >> ${CRONFILE}
chmod 644 ${CRONFILE}

#install crontab
crontab ${CRONFILE}
