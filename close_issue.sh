#!/bin/bash
git clone https://github.com/athorat940/jenkins-pipeline-tutorial.git
cd jenkins-pipeline-tutorial
data=$(gh issue list | awk '{print $1}' | head -n1)
gh issue close $data
