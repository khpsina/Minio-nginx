#!/bin/bash
set -e

echo "🔄 Restarting all services..."

bash "$(dirname "$0")/stop.sh"
bash "$(dirname "$0")/start.sh"

echo "✅ Restart complete!"
