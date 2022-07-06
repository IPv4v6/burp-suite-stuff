#!/usr/bin/env bash

set -e
set -u

VERSION="2022.7"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="a79856b146613253b7006b73245d896791729c4f61fcb772180fd5f55ee1d983"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
