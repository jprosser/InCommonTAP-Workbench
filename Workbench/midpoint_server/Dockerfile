FROM tier/midpoint:latest

MAINTAINER info@evolveum.com

ENV MP_DIR /opt/midpoint
ENV MP_MEM_MAX 2048m

VOLUME ${MP_DIR}/var

COPY container_files/mp-home/ ${MP_DIR}/var/
