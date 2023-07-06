#!/usr/bin/env bash

set -e
set -u

VERSION="2023.7"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="5cbe3a46e0de3f228eca89943c7f98258034f42be2dbe3ee98b26116de9f1e57"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
