#!/usr/bin/env bash

set -e
set -u

VERSION="2024.11"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="394b36c29722629602f723b8d5ba5bc330da5bc92fa1581bc0d8c07b40324c7e"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
