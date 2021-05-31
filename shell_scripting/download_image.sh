#!/bin/sh

access_token=$(curl -d "username=$1&password=secret" -X POST http://localhost:8000/auth | jq -r '.access_token')
curl --header "Authorization: Bearer $access_token" -X GET http://localhost:8000/image --output $2.png