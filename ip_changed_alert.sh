#!/bin/bash

# File to store the last known IP
IP_FILE="/Users/<YOUR-USERNAME>/Scripts/ip_most_recent.txt"

# Get the current public IP
CURRENT_IP=$(curl -s https://api.ipify.org)

# Read the last known IP
if [ -f "$IP_FILE" ]; then
    LAST_IP=$(cat "$IP_FILE")
else
    LAST_IP=""
fi

# Compare the current IP with the last known IP
if [ "$CURRENT_IP" != "$LAST_IP" ]; then
    echo "Public IP has changed to: $CURRENT_IP"
    echo "$CURRENT_IP" > "$IP_FILE"
    # Send an email notification (requires mailutils)
    echo "Your public IP has changed to: $CURRENT_IP" | mail -s "IP Change Alert" <yourEmail@gmail.com>
fi%
