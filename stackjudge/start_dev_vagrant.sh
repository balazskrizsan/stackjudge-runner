#!/bin/bash

./update-repositories.sh

echo "================================================================================================================="
echo "== START DEV versions from master ================================================================================"
echo "================================================================================================================="
echo "================================================================================================================="

docker-compose -f docker-compose.yml -f docker-compose-local-vagrant-extension.yml up