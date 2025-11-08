#!/bin/bash
set -e

echo "🚀 Starting all services..."

# Start MinIO
echo "➡️  Starting MinIO..."
cd "$(dirname "$0")/minio"
docker compose -f docker-compose.yml up -d

# Start FileBrowser
echo "➡️  Starting FileBrowser..."
cd ../filebrowser
docker compose -f docker-compose.yml up -d

# Start Nginx Proxy
echo "➡️  Starting Nginx Proxy..."
cd ../nginx
docker compose -f docker-compose.yml up -d

echo "✅ All services are up and running!"
echo "🌐 Access URLs:"
echo "   • MinIO Console → http://localhost:50018/minio-console"
echo "   • MinIO API → http://localhost:50017"
echo "   • FileBrowser → http://localhost:50018/filebrowser"
