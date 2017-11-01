#!/bin/bash

sudo chown -R 1000:1000 jenkins
docker-compose up -d

sleep 10s
cp inspectit/businessContext.xml inspectit_cmr/ci/businessContext.xml
cp inspectit/petclinic_base_services.xml /inspectit_cmr/ci/profiles/petclinic_base_services.xml
cp inspectit/petclinic_remote.xml /inspectit_cmr/ci/profiles/petclinic_remote.xml
cp inspectit/petclinic_sql_monitoring.xml /inspectit_cmr/ci/profiles/petclinic_sql_monitoring.xml

docker restart inspectit_cmr
