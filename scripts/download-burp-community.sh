#!/usr/bin/env bash

set -e
set -u

VERSION="2024.1.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="abb04139976b54b94d698129c3910230a94dd52c8f769cb72f002ee84bf6e532"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
