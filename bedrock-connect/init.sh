#!/usr/bin/env bash

# Path to the add-on options JSON (from Home Assistant)
CONFIG_PATH=/data/options.json

# Convert the YAML list of servers to JSON
servers_json=$(jq -c '.servers' $CONFIG_PATH)

# Write the servers JSON to the desired location
echo "${servers_json}" > /data/bedrock_servers.json

# Verify the file creation
if [ -f /data/bedrock_servers.json ]; then
    echo "Server list written to /data/bedrock_servers.json"
else
    echo "Failed to write server list!"
    exit 1
fi
