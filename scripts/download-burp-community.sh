#!/usr/bin/env bash

set -e
set -u

VERSION="2020.12"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="5acd1f77a4587de38dad8b64c746ddf606f97b0f0131f6b0c93a7ee2b531862f"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
