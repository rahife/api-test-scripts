#!/usr/bin/env bash

#Create environment to test:
#WIP
#$1: How many ...
#$2: URL > ex: http://52.17.174.169

set -e

cd $(dirname ${BASH_SOURCE[0]})

NUM_STAFFING_GROUPS=4
NUM_COMPETENCIES=4
NUM_RESOURCES=4
NUM_PROJECTS=2
URL='http://52.17.174.169:5000'

./create-staffing-groups.sh $NUM_STAFFING_GROUPS $URL |
xargs -I {} ./create-resources.sh $NUM_RESOURCES {} $URL |
xargs -I {} ./create-project.sh {} $URL

./create-competencies.sh $NUM_COMPETENCIES $URL

./create-bank-holidays.sh $URL

./create-desktops.sh $URL
