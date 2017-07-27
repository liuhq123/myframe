#!/bin/bash

echo "[INFO] run BDD functional test,please start the myframe server first."

cd ..

set MAVEN_OPTS=%MAVEN_OPTS% -XX:MaxPermSize=128m

mvn test -Pbdd-test

cd bin
