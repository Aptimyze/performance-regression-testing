#!/bin/bash

sudo chown -R 1000:1000 jenkins
docker-compose build
docker-compose up -d

sleep 10s
sudo cp inspectit/businessContext.xml inspectit_cmr/ci/businessContext.xml
sudo cp inspectit/default.xml inspectit_cmr/config/default.xml
docker restart inspectit_cmr
