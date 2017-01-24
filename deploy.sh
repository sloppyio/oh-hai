#!/bin/bash
# simple deploy script for sloppy.io platform for travis-ci
#@author marc@sloppy.io

apiuri="https://api.sloppy.io/v1"
headers="Authorization:Bearer $SLOPPY_APITOKEN"

status=$(curl -s -XGET -H "Content-Type: application/json" -H "$headers" $apiuri/apps/$SLOPPY_PROJECT | jq -r .status)

if [ "$status" != "error" ]; then
 echo "Change project $SLOPPY_PROJECT"
 ./sloppy change -var domain:$DOMAIN $SLOPPY_PROJECT $SLOPPY_FILE
 exit 0
else
 echo "Start project $SLOPPY_PROJECT"
 ./sloppy start -var domain:$DOMAIN $SLOPPY_FILE
 exit 0
fi

exit 1

