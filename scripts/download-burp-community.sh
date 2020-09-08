#!/usr/bin/env bash

set -e
set -u

VERSION="2020.9.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="0a1be83d0023b976f37fa0331a28278627eb90b6ea24a34fca3f7360e1430e9f"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
