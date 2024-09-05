#!/usr/bin/env bash

set -e
set -u

VERSION="2024.8"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="07b1cc33c23246629bfd65db06b0278dcebf28438446fd40af2d704bdc16aba3"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
