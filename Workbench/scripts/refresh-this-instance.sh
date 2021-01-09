#!/bin/bash

. /etc/profile

DELETE_VOLUMES="false"

if [[ $1 == "-dv" ]]; then
  echo "will delete volumes..."
  DELETE_VOLUMES="true"
fi

function DisplayUsage() {
echo "** This script will bring down the workbench containers, "
echo "grab the latest workbench code and config from the main repo, "
echo "then restart the containers."
echo ""
            echo "Usage:"
            echo "$0 [-dv]"
            echo ""
            echo "Pass the -dv flag to also delete data volumes when refreshing this instance."
            echo ""
            exit 1
}

if [[ $1 == "--?" ]] | [[ $1 == "--help" ]]; then
  DisplayUsage
fi
if [[ $# -eq 1 ]]; then
  if [[ $1 != "-dv" ]]; then DisplayUsage; fi
fi

pushd /csp-tap/InCommonTAP-Examples/Workbench
docker-compose down
if [[ $DELETE_VOLUMES == "true" ]]; then
  echo "deleting volumes..."
  docker volume rm $(docker volume ls -q)
fi
git pull
docker-compose up --build -d
popd
