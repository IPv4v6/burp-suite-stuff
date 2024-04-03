#!/usr/bin/env bash

set -e
set -u

VERSION="2024.3.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="a7db40a0d60d21768b54d87a4909f9def5f5ee5a033db65011130b7c35a9f86c"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
