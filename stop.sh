#!/bin/bash
set -e

echo "🛑 Stopping all services..."

cd "$(dirname "$0")/nginx"
docker compose -f docker-compose.yml down

cd ../filebrowser
docker compose -f docker-compose.yml down

cd ../minio
docker compose -f docker-compose.yml down

echo "✅ All services stopped successfully."
