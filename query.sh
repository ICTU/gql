#! /bin/sh

curl -s -X POST -H "Content-Type: application/json" -d "{ \"query\": \"${1//\"/\\\"}\" }" $GRAPHQL_URL | jq -c '.data'
