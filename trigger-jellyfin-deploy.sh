#!/bin/bash

curl --header "Content-Type: application/json" \
  --header "X-Api-Key: $API_KEY" \
  --header "X-Api-Secret: $API_SECRET" \
  --data '{ "stack": "demo-jellyfin" }' \
  https://demo.komo.do/execute/StopStack

sleep 10s

curl --header "Content-Type: application/json" \
  --header "X-Api-Key: $API_KEY" \
  --header "X-Api-Secret: $API_SECRET" \
  --data '{ "stack": "demo-jellyfin" }' \
  https://demo.komo.do/execute/DeployStack