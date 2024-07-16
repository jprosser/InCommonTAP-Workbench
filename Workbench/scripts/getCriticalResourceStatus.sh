#/bin/bash

###config settings###
#mp_username='administrator'
#mp_userpass='5ecr3t'
mp_username='banderson'
mp_userpass='Password1'
####################

###declarations###
declare -A KeyResources

###functions###
function getResourceStatus() {

       KeyResources=( ["Grouper"]="fb0bbf07-e33f-4ddd-85a1-16a7edc237f2" ["COmanage"]="edb9e47b-e8ad-48b7-9127-ae7b8911a8f2" ["LDAP"]="0a37121f-d515-4a23-9b6d-554c5ef61272" )
       mp_baseUrl='https://localhost:10443/midpoint/ws/rest'

       for resourcename in "${!KeyResources[@]}"; do
        if [ "$resourcename" = "$1" ]; then
               thisResourceOid=${KeyResources[$resourcename]}
               thisResourceName=$resourcename
        fi
       done
 
       url=$mp_baseUrl/resources/$thisResourceOid/test
       rawVal=$(curl -s -k --user $mp_username:$mp_userpass -H "Accept: application/json" -X POST $url)
       if [ $? -ne 0 ]; then
         echo "ERROR: Problem connecting to host.  Exiting..."
         echo ""
         exit 1
       fi

       resourceStatus=$(echo $rawVal | jq -r '.object.status')
       echo "Resource Name: $thisResourceName"
       #echo "Resource OID: $thisResourceOid"
       if [ "$resourceStatus" != "success" ]; then
               echo "*** resource has problems (status=$resourceStatus) ***"
       else
               echo "resource is healthy"
       fi

       echo ""
}

### Main ###
echo "midPoint Resource Health Check"
echo ""
getResourceStatus "Grouper"
getResourceStatus "COmanage"
getResourceStatus "LDAP"
echo ""
echo ""

