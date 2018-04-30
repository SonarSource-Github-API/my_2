#!/bin/bash

git checkout master
$M2_HOME/bin/mvn sonar:sonar -Dsonar.host.url=http://localhost:9000 -Dsonar.login=admin -Dsonar.password=admin -Dsonar.scm.provider=git
