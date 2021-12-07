#!/bin/bash

autorest --java --use:@autorest/java@4.0.41 --input-file:../aws_sdk_java/api.yml --output-folder:../aws_sdk_java/code --namespace:com.kbalazsworks.stackjudge_sdk --pom-file=java/pom.xml --v3
