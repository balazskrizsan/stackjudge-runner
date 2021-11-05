#!/bin/bash

echo "================================================================================================================="
echo "== UPDATE Backend and Frontend from master ======================================================================"
echo "================================================================================================================="
echo "================================================================================================================="

rm -rf ./frontend
git clone https://github.com/balazskrizsan/stack-judge-frontend.git ./frontend
rm -rf ./backend
git clone https://github.com/balazskrizsan/stack-judge-java.git ./backend
