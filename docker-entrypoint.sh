#!/bin/sh

CONFIG_DIR="$HOME/.config/backup-all-my-flickr-photos"
mkdir -p $CONFIG_DIR

echo "$KEYS_JSON_BASE64" | base64 -d > "$CONFIG_DIR/keys.json"
echo "$ACCOUNT_AUTH_BASE64" | base64 -d > "$CONFIG_DIR/account_auth"

backup-all-my-flickr-photos "$@"
