#!/usr/bin/env bash

set -e
set -u

VERSION="2022.12.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="53dea5fd42cddbce0ac1c3b6381d7dda26fd91310830cc989fbf3a3c2c3f5670"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
