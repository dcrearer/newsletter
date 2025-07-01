#!/usr/bin/env bash

# Function to show usage
usage() {
    echo "Usage: $0 [--tui|--no-tui]"
    echo "  --tui     Enable TUI mode"
    echo "  --no-tui  Disable TUI mode (default)"
    exit 1
}

if [[ "$1" == "--tui" ]]; then
    TUI_FLAG=""
else
    TUI_FLAG="--no-tui"
fi

# Use oha to load test the subscription endpoint
oha $TUI_FLAG \
    -n 1000 \
    -c 10 \
    -m POST \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -d "name=user_$(openssl rand -hex 4)&email=user_$(openssl rand -hex 4)@example.com" \
    http://127.0.0.1:8000/subscriptions
