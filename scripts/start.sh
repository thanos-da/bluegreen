#!/bin/bash
docker run -d -p 3000:3000 \
  -e NEW_RELIC_NO_CONFIG_FILE=true \
  -e NEW_RELIC_LICENSE_KEY=844ef824bcd64aebc55cbbba52db8171FFFFNRAL \
  -e NEW_RELIC_APP_NAME="MyNodeApp" \
  -e NEW_RELIC_DISTRIBUTED_TRACING_ENABLED=true \
  -e NEW_RELIC_LOG_LEVEL=info \
  --name nodejs-container \
  thanosda/nodejs-docker-app:latest
