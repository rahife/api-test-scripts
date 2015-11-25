#!/usr/bin/env bash

#WIP

set -e

cd $(dirname ${BASH_SOURCE[0]})

#URL="$1/api/project/0/10?&_=1448444710415"
URL="http://52.17.174.169:5000/api/project/0/10?&_=1448444710415"

START=1
END=1
for ((i=START; i<=END; i++))
do
    curl --silent -X GET -H "Content-Type: application/json" $URL | jq . >> projects.list
done
echo ""

