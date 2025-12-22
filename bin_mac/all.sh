#!/bin/bash

# # ubuntu / linux
# export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
# export PATH=$JAVA_HOME/bin:$PATH

# mac
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export PATH="$JAVA_HOME/bin:$PATH"

./clean.sh
./package.sh
./run-auth.sh
./run-gateway.sh
./run-modules-file.sh
./run-modules-gen.sh
./run-modules-job.sh
./run-modules-system.sh
./run-monitor.sh

