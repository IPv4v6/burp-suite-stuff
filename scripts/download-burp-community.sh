#!/usr/bin/env bash

set -e
set -u

VERSION="2022.9.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="89a991822d667ad631ac07ce2b1fc05dd2f452f6ac23961357b8a44a314e2e7d"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
