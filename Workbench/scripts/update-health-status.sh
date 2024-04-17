#!/bin/bash

/csp-tap/InCommonTAP-Examples/Workbench/scripts/gethealth.py > /csp-tap/InCommonTAP-Examples/Workbench/scripts/gethealth-output.txt

docker cp /csp-tap/InCommonTAP-Examples/Workbench/scripts/gethealth-output.txt workbench-webproxy-1:/var/www/html/status/index.html
