#!/usr/bin/env bash

set -e
set -u

VERSION="2020.4.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="d461b0222a29da8614ebb7b577642e70161743be93eaef3bbd0d1bc97f04d859"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
