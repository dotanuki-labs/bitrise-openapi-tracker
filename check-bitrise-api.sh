#! /usr/bin/env bash

set -e

dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${dir%/*}"

readonly bitrise_swagger="https://api-docs.bitrise.io/docs/swagger.json"
readonly swagger_file="bitrise-swagger.json"
readonly bumpsh_token="$1"

echo
echo "Checking for changes on Bitrise API"

echo
echo "‣ Downloading Swagger file"

rm -rf "$swagger_file"
curl -fsSL -o "$swagger_file" -C - "$bitrise_swagger"

echo "‣ Deploying new version (if changed)"

if ! which bump-cli >/dev/null; then
    npm install -g bump-cli >/dev/null 2>&1
fi

bump deploy "$bitrise_swagger" \
    --doc "bitrise-openapi-tracker" \
    --token "$bumpsh_token" >/dev/null 2>&1

echo
echo "Done!"
echo
