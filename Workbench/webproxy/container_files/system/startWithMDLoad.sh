#!/bin/sh
/usr/local/bin/startup.sh &

#wait for IdPUI's API, then load metadata into it
pushd /mdload
./wait-for-it.sh -t 0 idp_ui_api:8443 -- ./loadMD.sh GrouperSP /mdload/grouper-sp.xml 40 && \
                                         ./loadMD.sh midPointSP /mdload/midpoint-sp.xml 0 && \
                                         ./loadMD.sh ProxySP /mdload/proxy-sp.xml 0 && \
                                         ./loadMD.sh WordPressSP /mdload/wordpress-sp.xml 0 && \
                                         ./loadMD.sh COmanageSP /mdload/comanage-sp.xml 0
popd
wait
