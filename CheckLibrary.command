#! /bin/bash

BASEDIR=$(dirname $0)

cd $BASEDIR

pod lib lint --verbose --sources=com-ios-sapspecs,master --allow-warnings --fail-fast