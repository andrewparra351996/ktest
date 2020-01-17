#!/bin/bash

rm -rfv ./reports/chrome
mkdir -p ./reports/chrome

katalon_opts='-browserType="Chrome" -retry=0 -statusDelay=15 -testSuitePath="Test\ Suites/Pass_Fail_Suite"'
docker run --rm -v /c/users/parraa/Katalon\ Studio/katalontestscripts:/katalon/katalon/source:ro -v /c/users/parraa/Katalon\ Studio/reports/chrome:/katalon/katalon/report -e KATALON_OPTS="$katalon_opts" katalonstudio/katalon
