#!/usr/bin/env bash

set -e
set -u

VERSION="2026.4.3"
FILE="burpsuite_linux_v${VERSION}.sh"
SHA256="1ce4fa3849b93fd46e115c4197e66e5b7bbd859ce7c031b567dcf525b9e2e204"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=desktop&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
