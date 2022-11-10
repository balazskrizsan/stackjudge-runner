#!/bin/bash

./clearStructure.sh

echo "== UPDATE all repos from origin/master =========================================================================="

git clone https://github.com/balazskrizsan/stack-judge-frontend.git ./../frontend
git clone https://github.com/balazskrizsan/stack-judge-java.git ./../backend
git clone https://github.com/balazskrizsan/stackjudge-aws.git ./../aws
git clone https://github.com/balazskrizsan/stackjudge_notification.git ./../notification
git clone https://github.com/balazskrizsan/stackjudge_identity_service.git ./../stackjudge_identity_service
