#!/bin/bash

# Check if Xorg is running
if pgrep -x "Xorg" > /dev/null; then
    echo "Xorg is already running."
else
    # If Xorg is not running, start it
    echo "Starting Xorg..."
    startx
fi
