#!/bin/bash

set -xe

ksversion=$1
apiKey=$2

rm -rfv ./reports/chrome
mkdir -p ./reports/chrome

docker run -t --rm  -e KATALON_USER_ID=`id -u $USER` -v c:/users/parraa/Katalon\ Studio/katalontestscripts:/katalon/katalon/source -v c:/users/parraa/Katalon\ Studio/reports/chrome:/katalon/katalon/report katalonstudio/katalon:$ksversion katalon-execute.sh -browserType="Chrome" -retry=0 -statusDelay=15 -testSuitePath="Test\ Suites/Pass_Fail_Suite" -apiKey=${apiKey}
