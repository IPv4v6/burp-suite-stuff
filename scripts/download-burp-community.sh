#!/usr/bin/env bash

set -e
set -u

VERSION="2025.2.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="1036186896aa30ff813c7b4a3acd434f76af31a6733e0a0f636cfe6bba26d2dd"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
