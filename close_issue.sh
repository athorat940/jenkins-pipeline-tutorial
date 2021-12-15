#!/bin/bash

cd jenkins-pipeline-tutorial
data=$(gh issue list | awk '{print $1}' | head -n1)
gh issue close $data
