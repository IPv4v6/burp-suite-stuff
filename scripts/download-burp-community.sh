#!/usr/bin/env bash

set -e
set -u

VERSION="2025.11.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="decaf0a86bacafdf47abfeef3cefb229976a96d0cc70394c7e87c1a5070ab90e"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
