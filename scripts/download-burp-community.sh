#!/usr/bin/env bash

set -e
set -u

VERSION="2025.12.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="188e2bcae3d3b4786726f355be51438149dfd9f8813641242a8f0cdf7ba74135"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
