#!/usr/bin/env bash

set -e
set -u

VERSION="2024.9.5"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="7672bacfe2f73e7ed5eee26509991b436af44180577ed71c6dbddf3f9137a5fe"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
