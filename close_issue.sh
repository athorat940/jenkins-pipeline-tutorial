#!/bin/bash

cd /opt/test/jenkins-pipeline-tutorial
data=$(gh issue list | awk '{print $1}' | head -n1)
gh issue close $data
