#!/usr/bin/env bash

set -e
set -u

VERSION="2021.5.3"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="bc76e469f31bb160795550e9e6f05a195d8d3750be060a87b521a037056fdd23"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
