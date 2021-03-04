#!/usr/bin/env bash

set -e
set -u

VERSION="2021.3"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="c38081e6cf49fb27a0aaed042b6bbc26f0e4fbb46f2c6b5bc91506b7f4e78f0f"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
