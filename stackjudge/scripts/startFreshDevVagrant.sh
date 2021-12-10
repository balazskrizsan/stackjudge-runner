#!/bin/bash

./updateRepositories.sh

echo "== START DEV versions from master ==============================================================================="

docker-compose -f ./../docker_compose_files/docker-compose.yml -f ./../docker_compose_files/docker-compose-local-vagrant-extension.yml up
