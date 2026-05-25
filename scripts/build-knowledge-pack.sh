#!/bin/bash
# Knowledge pack build script

set -e

DOMAIN=$1

if [ -z "$DOMAIN" ]; then
  echo "Usage: ./build-knowledge-pack.sh <domain>"
  echo "Domains: medical, agriculture, legal, education"
  exit 1
fi

echo "Building $DOMAIN knowledge pack..."
# Add build logic here