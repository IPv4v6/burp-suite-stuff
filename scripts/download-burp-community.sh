#!/usr/bin/env bash

set -e
set -u

VERSION="2021.8.4"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="9b0861a28394dc086cd60e4a2450867f7632380f676c71854e35c9f127e0ff69"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
