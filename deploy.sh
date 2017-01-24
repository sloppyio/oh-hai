#!/bin/bash

./sloppy show $SLOPPY_PROJECT

if [ $? -eq 0 ]; then 
 sloppy change -var domain:$DOMAIN $SLOPPY_PROJECT $SLOPPY_FILE
else 
 sloppy start -var domain:$DOMAIN $SLOPPY_FILE
fi 
