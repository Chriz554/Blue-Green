#!/bin/bash
docker compose -f docker-compose.green.yml down
docker compose -f docker-compose.green.yml up -d --build
echo "GREEN deployed on port 8082"
