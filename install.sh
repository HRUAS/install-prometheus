#!/bin/bash

# Get the current directory
CURRENT_DIR=$(pwd)

# Create required directories and files
mkdir -p "$CURRENT_DIR/prometheus-persistence"
touch "$CURRENT_DIR/prometheus.yml"

# Set correct ownership and permissions
sudo chown -R 1001:1001 "$CURRENT_DIR/prometheus-persistence"
sudo chmod -R 775 "$CURRENT_DIR/prometheus-persistence"

# Run Docker Compose
docker-compose up -d
