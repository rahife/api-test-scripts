#!/bin/sh

URL="http://localhost:5555/api/admin/holiday/"

echo "BANK HOLIDAYS: "$URL

curl -X POST -H "Content-Type: application/json" -d '{"date":"2014-10-09T00:00:00.000Z"}' $URL
echo ""

