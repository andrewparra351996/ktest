#!/bin/bash

set -xe

docker run -t --shm-size=512m --rm -v "$(pwd)":/katalon/katalon/source katalonstudio/katalon katalonc.sh -projectPath=/katalon/katalon/source -browserType="Chrome" -retry=0 -statusDelay=15 -testSuitePath="Test Suites/Pass_Or_Fail" -apiKey="2bef508a-c7e5-45b2-aede-2c80b470607b"
