#! /usr/bin/env bash

set -e

dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${dir%/*}"

readonly cyan="\033[1;36m"
readonly normal="\033[0m"

echo
echo "Checking for changes on Bitrise API"
echo

echo "."
echo "."
echo "."
echo "."

echo
echo "Done!"
echo
