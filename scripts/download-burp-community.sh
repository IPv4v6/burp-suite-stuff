#!/usr/bin/env bash

set -e
set -u

VERSION="2021.8"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="f5ec72f7abcf53d55f39c0f7f87a9fc1cda6f27f3886268fe15553059be4f097"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
