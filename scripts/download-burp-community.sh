#!/usr/bin/env bash

set -e
set -u

VERSION="2025.4.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="69d6c6c1d5935eda2135a9910a7aa2d411f7bd36d068951f08ad43d6fbe95a20"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
