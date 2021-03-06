#!/bin/bash

set -euo pipefail

BRANCH="$1"
PR_ID="$2"

git checkout $BRANCH
$M2_HOME/bin/mvn sonar:sonar -Dsonar.host.url=http://localhost:9000 -Dsonar.login=admin -Dsonar.password=admin -Dsonar.scm.provider=git -Dsonar.pullrequest.key=$PR_ID \
        -Dsonar.pullrequest.branch=$BRANCH \
        -Dsonar.pullrequest.base=master \
        -Dsonar.pullrequest.provider=github \
        -Dsonar.pullrequest.github.repository=SonarSource-Github-API/my_2
