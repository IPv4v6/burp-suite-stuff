#!/usr/bin/env bash

set -e
set -u

VERSION="2023.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="d1da6e739f6f446c5fda0a810980947aabea14985d2c8be69c57c07513dc53cc"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
