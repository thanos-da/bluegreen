#!/bin/bash
echo "Stopping Node.js application"

# Find and kill any running node process on your app port (e.g. 3000)
PID=$(lsof -t -i:3000)

if [ -n "$PID" ]; then
  kill -9 $PID
  echo "Stopped process on port 3000"
else
  echo "No process found on port 3000"
fi
