#!/usr/bin/env bash

set -e
set -u

VERSION="2023.6.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="ad623a06588b53961c1f54ab721f773d66b93c8474903f70a5168f7daee73b42"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
