#!/usr/bin/env bash

set -e
set -u

VERSION="2026.2.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="659761f640e9da5012cd45aaf5cc1d3d728dcabe8e6611b1c9bf7f6fac134d66"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
