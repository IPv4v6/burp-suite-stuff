#!/usr/bin/env bash

set -e
set -u

VERSION="2020.8"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="eb5d3a5536675e82005b03ca624b9f86f0be5e99295f8c634fe0972bbc679516"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
