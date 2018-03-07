#!/bin/bash

curl "http://localhost:4741/guitars/${ID}" \
  --include \
  --request GET \

echo
