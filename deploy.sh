#!/bin/bash
# simple deploy script for sloppy.io platform for travis-ci
#@author marc@sloppy.io

set -x

apiuri="https://api.sloppy.io/v1"
headers="Authorization:Bearer $SLOPPY_APITOKEN"

status=$(http --ignore-stdin GET $apiuri/apps/$SLOPPY_PROJECT "$headers" | jq -r .status)

if [ "$status" != "error" ]; then
 echo "Change project $SLOPPY_PROJECT"
 ./sloppy change -var domain:$DOMAIN $SLOPPY_PROJECT $SLOPPY_FILE
else
 echo "Start project $SLOPPY_PROJECT"
 ./sloppy start -var domain:$DOMAIN $SLOPPY_FILE
fi
