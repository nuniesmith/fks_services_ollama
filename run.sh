#!/bin/bash
# Startup script for fks_ollama service

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "Starting fks_ollama service..."

# Start with docker-compose
docker-compose up -d

echo "fks_ollama service started"
echo "Check status: docker-compose ps"
echo "View logs: docker-compose logs -f"
