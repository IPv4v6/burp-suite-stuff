#!/usr/bin/env bash

set -e
set -u

VERSION="2024.9.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="4631419c53b5159263783f6050dba6a0ced116f350358e84ddf3dac3b3814429"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
