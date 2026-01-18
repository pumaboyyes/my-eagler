#!/bin/bash

# Find the server.jar location
JAR_PATH=$(find . -name "server.jar" | head -n 1)

# If found, copy the icon into the same folder
if [ -n "$JAR_PATH" ]; then
  ICON_DIR=$(dirname "$JAR_PATH")
  cp /tmp/server-icon.png "$ICON_DIR/server-icon.png"
fi

# Start the server
exec ./main.sh
