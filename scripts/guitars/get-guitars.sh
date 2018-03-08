#!/bin/bash

curl "http://localhost:4741/guitars" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo
