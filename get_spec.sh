#!/bin/bash

usage() {
  echo "This script creates YAML files from Rubrik's Swagger REST API documentation. These YAML files can be imported"
  echo "into Postman as collections. A YAML file is created for each version of the Rubrik API."
  echo
  echo "$0: <RUBIRK_IP/RUBRIK_HOSTNAME>"
  echo
  exit 1
}

if [ "$1" == "" ]; then
  usage
fi

RUBRIK_IP=$1
VERSION=1
MORE=Yes

while [ "$MORE" == "Yes" ]; do
  curl -Lks https://${RUBRIK_IP}/docs/v${VERSION}/api-docs -o ./v${VERSION}-spec-${RUBRIK_IP}.yml
  RC=$?
  if [ $RC -gt 0 ]; then
    echo Error could not contact $RUBRIK_IP and get public API list for version $VERSION.
  elif [ "$(cat ./v${VERSION}-spec-${RUBRIK_IP}.yml)" == "Route not defined." ]; then
    MORE=No
    rm ./v${VERSION}-spec-${RUBRIK_IP}.yml
  else
    sed -i '' 's/basePath: \/api\/v'${VERSION}'/basePath: "{{rubrik_ip}}\/api\/v'${VERSION}'"/g' v${VERSION}-spec-${RUBRIK_IP}.yml
  fi
  let VERSION=$VERSION+1
done

curl -Lks https://${RUBRIK_IP}/docs/internal/api-docs -o ./internal-spec-${RUBRIK_IP}.yml
if [ $? -gt 0 ]; then
  echo Error could not contact $RUBRIK_IP and get internal API list.
else
  sed -i '' 's/basePath: \/api\/internal/basePath: "{{rubrik_ip}}\/api\/internal"/g' internal-spec-${RUBRIK_IP}.yml
fi
