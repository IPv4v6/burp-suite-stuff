#!/usr/bin/env bash

set -e
set -u

VERSION="2021.4"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="edd00188d2b2fa3c901127223032c3b10a073bbbe06eef088dd50d9e10448541"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
