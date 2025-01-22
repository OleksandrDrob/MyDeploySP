#!/bin/bash

# Get the directory of the script
SCRIPT_DIR=$(dirname "$0")

# Path to Secrets.swift relative to the script
SECRETS_FILE="$SCRIPT_DIR/Secrets.swift"

# Check if CORALOGIX_KEY is set
if [ -z "$CORALOGIX_KEY" ]; then
  echo "Error: CORALOGIX_KEY is not set."
  exit 1
fi

# Replace placeholder with the actual secret
sed -i.bak \
    -e "s/CORALOGIX_KEY/$CORALOGIX_KEY/" \
    $SECRETS_FILE

echo "Secrets.swift has been updated with CORALOGIX_KEY."
