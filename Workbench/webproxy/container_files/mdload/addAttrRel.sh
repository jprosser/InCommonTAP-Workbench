#!/bin/sh

HEADER_NAME="IDPUI_API_KEY"
HEADER_VALUE="00c34830-9028-418c-976c-624a61578c8f"

#first param is internal ID

#get the current object and add attribute release info
echo "mdload-attr:Fetching current data for object $1"
curl -k -s --location --request GET "https://localhost/idpui-api/api/EntityDescriptor/$1" \
--header "${HEADER_NAME}: ${HEADER_VALUE}" | jq '.attributeRelease += ["eduPersonPrincipalName","mail","givenName","surname","uid"]' > json.out

#update the existing object with the added attribute release data
echo "mdload-attr:Adding attribute release info for object $1"
curl -k -s --location --request PUT "https://localhost/idpui-api/api/EntityDescriptor/$1" \
--header 'Content-Type: application/json' \
--header "${HEADER_NAME}: ${HEADER_VALUE}" \
--data-raw "$(cat json.out)"

rm json.out

