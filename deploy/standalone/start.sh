#!/bin/sh
set -e
cd "$(dirname "$0")"
if [ ! -f ./vaultwarden ]; then
  echo "vaultwarden binary not found in $(pwd)" >&2
  exit 1
fi
if [ ! -f ./web-vault/index.html ]; then
  echo "web-vault/index.html missing" >&2
  exit 1
fi
echo "Starting Vaultwarden from $(pwd)"
echo "Open: http://127.0.0.1:8000"
exec ./vaultwarden "$@"
