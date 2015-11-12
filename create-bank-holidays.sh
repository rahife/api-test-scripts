#!/usr/bin/env bash
#Create Staffing Groups:
#WIP

set -e

cd $(dirname ${BASH_SOURCE[0]})

URL="$1/api/admin/holiday/"

START=1
END=1
for ((i=START; i<=END; i++))
do
    curl -X POST -H "Content-Type: application/json" -d '{"date":"2015-10-09T00:00:00.000Z"}' $URL
done
echo ""

