#!/usr/bin/env bash

set -e
set -u

VERSION="2024.12"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="57b545be47fc7831f7f4bc3c03e3a30ab6c65cb9c883b0ef6b6b5d157d2882ee"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
