#!/usr/bin/env bash

set -e
set -u

VERSION="2021.5.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="54bea55fb79fb00c6b0f1edf130322ef205f4b845332090e1363f7380312be53"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
