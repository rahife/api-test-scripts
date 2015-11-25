#!/usr/bin/env bash

set -e

cd $(dirname ${BASH_SOURCE[0]})


#URL="$/api/staffing-groups-with-resource/"
URL="http://52.17.174.169:5000/api/staffing-groups-with-resource/"

START=1
END=1
for ((i=START; i<=END; i++))
do
    curl --silent -X POST -H "Content-Type: application/json" $URL | jq . >> resources.list
done
echo "" 
