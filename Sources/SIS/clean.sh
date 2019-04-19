#!/bin/bash

docker stop tier-demo-ldap
docker stop tier-demo-mysql
docker stop tier-demo-idp
docker stop tier-demo-grouper
docker stop tier-demo-web-app
docker stop tier-demo-rabbit

docker rm tier-demo-ldap
docker rm tier-demo-mysql
docker rm tier-demo-idp
docker rm tier-demo-grouper
docker rm tier-demo-web-app
docker rm tier-demo-rabbit
