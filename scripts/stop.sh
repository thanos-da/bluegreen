#!/bin/bash
docker stop nodejs-container || true
docker rm nodejs-container || true
