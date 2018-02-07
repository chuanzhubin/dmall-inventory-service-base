#!/usr/bin/env bash

JENKINS_SERVER=http://ec2-13-114-52-20.ap-northeast-1.compute.amazonaws.com:30180
BASEDIR=$(dirname "$0")

restore () {
    curl -X POST "$JENKINS_SERVER/createItem?name=dmall-inventory-service-package" --data-binary "@$BASEDIR/package.xml" -H "Content-Type:text/xml"
    curl -X POST "$JENKINS_SERVER/createItem?name=dmall-inventory-service-deploy" --data-binary "@$BASEDIR/deploy.xml" -H "Content-Type:text/xml"
}

backup () {
    curl "$JENKINS_SERVER/job/dmall-inventory-service-package/config.xml" -o $BASEDIR/package.xml
    curl "$JENKINS_SERVER/job/dmall-inventory-service-deploy/config.xml" -o $BASEDIR/deploy.xml
}

if [ $1 == "restore" ]; then
    restore
else 
    backup
fi