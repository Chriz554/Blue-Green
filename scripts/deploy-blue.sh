#!/bin/bash
docker compose -f docker-compose.blue.yml down
docker compose -f docker-compose.blue.yml up -d --build
echo "BLUE deployed on port 8081"
