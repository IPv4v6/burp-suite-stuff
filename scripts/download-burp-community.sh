#!/usr/bin/env bash

set -e
set -u

VERSION="2025.8.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="bed65a1bb5cee983e1e4564429e28c13fcdbf099907b633abf0daee77a4b2657"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
