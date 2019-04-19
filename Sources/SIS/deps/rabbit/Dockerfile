FROM rabbitmq:3-management

MAINTAINER "TIER API & EntReg Working Group <tier-api@internet2.edu>"

#TODO: Copy local queue configuration into container
# 1. copy local json file to container
# 2. run rabbitmqadmin to import configuration

COPY definitions.json rabbitmq.config /etc/rabbitmq/
