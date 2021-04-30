#!/usr/bin/env bash

set -e
set -u

VERSION="2021.5"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="f3ff6955ae566cf73aaff6401eefd21f389feb6b8478590c37e3b094268d722b"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
