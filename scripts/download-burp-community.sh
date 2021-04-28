#!/usr/bin/env bash

set -e
set -u

VERSION="2021.4.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="840c350ed75c9425aea79cd459e7baf8f73618e1ce9a0301f6cdc02c5e12d4b5"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
