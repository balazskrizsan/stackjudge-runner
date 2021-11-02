#!/bin/bash

echo "================================================================================================================="
echo "== START DEV verions from master ================================================================================"
echo "================================================================================================================="
echo "================================================================================================================="

rm -rf ./frontend
git clone https://github.com/balazskrizsan/stack-judge-frontend.git ./frontend
rm -rf ./backend
git clone https://github.com/balazskrizsan/stack-judge-java.git ./backend

docker-compose -f docker-compose.yml -f docker-compose-dev-extension.yml up
