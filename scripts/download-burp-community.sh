#!/usr/bin/env bash

set -e
set -u

VERSION="2023.10.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="6c84e9a052e5c0bddec9aa6a528a598fb3857f8c204276ac3caae2b70a3be6b2"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
