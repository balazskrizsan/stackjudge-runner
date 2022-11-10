#!/bin/bash

echo "== Clear folder structure ======================================================================================="

rm -rf ./../frontend
mkdir  ./../frontend
echo "== Clear: frontend"

rm -rf ./../backend
mkdir  ./../backend
echo "== Clear: backend"

rm -rf ./../aws
mkdir  ./../aws
echo "== Clear: aws"

rm -rf ./../notification
mkdir  ./../notification
echo "== Clear: notification"

rm -rf ./../stackjudge_identity_service
mkdir  ./../stackjudge_identity_service
echo "== Clear: stackjudge_identity_service"
