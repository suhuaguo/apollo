#!/bin/bash
SERVICE_NAME=apollo-adminservice
VERSION=0.0.1-SNAPSHOT
PATH_TO_JAR=$SERVICE_NAME"-"$VERSION".jar"

cd `dirname $0`/..

if [[ ! -f PATH_TO_JAR && -d current ]]; then
    cd current
fi

if [[ -f $SERVICE_NAME".jar" ]]; then
  rm -rf $SERVICE_NAME".jar"
fi

ln $PATH_TO_JAR $SERVICE_NAME".jar"
chmod a+x $SERVICE_NAME".jar"
./$SERVICE_NAME".jar" start

exit 0;