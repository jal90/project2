#!/bin/bash

curl "http://localhost:4741/guitars/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "guitar": {
      "make": "'"${MODEL}"'"
    }
  }'

echo
