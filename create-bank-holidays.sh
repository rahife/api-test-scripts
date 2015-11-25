#!/usr/bin/env bash
#Create Bank Holidays
#WIP

set -e

cd $(dirname ${BASH_SOURCE[0]})

URL="$1/api/admin/holiday/"

START=1
END=1
for ((i=START; i<=END; i++))
do
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2014-01-09T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2014-02-09T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2014-03-09T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2014-04-09T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2014-05-09T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2015-01-03T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2015-01-07T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2015-02-09T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2015-03-12T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2015-04-19T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2015-05-09T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2015-06-04T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2015-09-09T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2015-10-04T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2015-10-02T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2015-11-06T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2016-03-12T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2016-04-19T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2016-05-09T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2016-06-04T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2016-09-09T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2016-10-04T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2016-10-02T00:00:00.000Z"}' $URL | jq .
    curl --silent -X POST -H "Content-Type: application/json" -d '{"date":"2016-11-06T00:00:00.000Z"}' $URL | jq .
done
echo ""

