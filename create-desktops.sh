#!/usr/bin/env bash 

#Create Desktops
#WIP

set -e

cd $(dirname ${BASH_SOURCE[0]})

URL="$1/api/admin/desktop-period/"

START=1
END=1
for ((i=START; i<=END; i++))
do
    curl --silent -X POST -H "Content-Type: application/json" -d '{"startDate":"2014-01-15T00:00:00.000Z","endDate":"2014-12-11T00:00:00.000Z","internal":2,"external":3,"operations":2}' $URL | jq .
    curl --silent  -X POST -H "Content-Type: application/json" -d '{"startDate":"2015-01-15T00:00:00.000Z","endDate":"2015-03-11T00:00:00.000Z","internal":2,"external":3,"operations":2}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"startDate":"2015-04-15T00:00:00.000Z","endDate":"2015-05-11T00:00:00.000Z","internal":2,"external":3,"operations":2}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"startDate":"2015-06-15T00:00:00.000Z","endDate":"2015-07-11T00:00:00.000Z","internal":2,"external":3,"operations":2}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"startDate":"2015-08-15T00:00:00.000Z","endDate":"2015-10-11T00:00:00.000Z","internal":2,"external":3,"operations":2}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"startDate":"2015-10-15T00:00:00.000Z","endDate":"2015-12-11T00:00:00.000Z","internal":2,"external":3,"operations":2}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"startDate":"2016-01-15T00:00:00.000Z","endDate":"2016-03-11T00:00:00.000Z","internal":2,"external":3,"operations":2}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"startDate":"2016-06-15T00:00:00.000Z","endDate":"2016-12-11T00:00:00.000Z","internal":2,"external":3,"operations":2}' $URL | jq .
done
echo ""

