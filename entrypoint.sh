#!/bin/sh
set -e

# Set default API_BASE if not provided
# Use host.docker.internal to access host's localhost from Docker container on Windows/Mac
API_BASE=${API_BASE:-"http://host.docker.internal:8787"}

# Replace environment variable in index.html
sed -i "s|API_BASE: \".*\"|API_BASE: \"${API_BASE}\"|g" /usr/share/nginx/html/index.html

exec "$@"


