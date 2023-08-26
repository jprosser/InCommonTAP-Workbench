#!/bin/sh

HEADER_NAME="IDPUI_API_KEY"
HEADER_VALUE="00c34830-9028-418c-976c-624a61578c8f"
DIR=/mdload

#first param is name of SP
#second param is filename of raw metadata
#third param is sleep time


pushd $DIR

#make sure its up
echo "mdload:Sleeping for $3 seconds to ensure availability"
sleep $3

#import raw XML
echo "mdload:Importing metadata for $1..."
curl -k -s --location --request POST "https://localhost/idpui-api/api/EntityDescriptor?spName=$1" \
--header 'Content-Type: application/xml' \
--header "${HEADER_NAME}: ${HEADER_VALUE}" \
--data-raw "$(cat $2)" > $DIR/output.txt

#get ID, set as enabled
ID=$(cat $DIR/output.txt | jq -r '.id')
echo "mdload:Fetched ID for object: $ID"
sleep 5

#ensure ID isn't empty
echo "Setting $1 as enabled..."
if [[ -z "$ID" ]]; then
 echo "mdload:\$ID : is EMPTY, terminating"
 cat $DIR/output.txt
 exit 1
fi

#validate ID
if [[ $ID =~ ^\{?[A-F0-9a-f]{8}-[A-F0-9a-f]{4}-[A-F0-9a-f]{4}-[A-F0-9a-f]{4}-[A-F0-9a-f]{12}\}?$ ]]; then
  echo "mdload: object ID validated"
  curl -k -s --location --request PATCH "https://localhost/idpui-api/api/activate/entityDescriptor/$ID/enable" \
     --header "${HEADER_NAME}: ${HEADER_VALUE}"
else
  echo "mdload:Bad response from service, terminating:"
  cat $DIR/output.txt
  exit 1
fi

#add attribute release
$DIR/addAttrRel.sh $ID

rm $DIR/output.txt

popd

