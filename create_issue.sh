#!/bin/bash

cd jenkins-pipeline-tutorial
commit=$(git log |  awk '{print $2}' | head -n1)
echo $commit
gh issue create --title "Build Failure" --body "Root cause : $commit" --label "Incident"
