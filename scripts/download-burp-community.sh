#!/usr/bin/env bash

set -e
set -u

VERSION="2024.5.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="b8edf89ad0a1533f5d3953c1c125f4cda7da096f043912192dbee8d85620f1bc"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
