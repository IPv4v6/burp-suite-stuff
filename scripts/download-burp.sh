#!/usr/bin/env bash

set -e
set -u

VERSION="2026.8"
FILE="burpsuite_linux_v${VERSION}.sh"
SHA256="a9b71d5903e4aac00b790a7c5a0c0630fdcbfe1250aafd7bd540a3ad44b89983"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=desktop&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
