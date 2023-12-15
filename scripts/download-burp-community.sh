#!/usr/bin/env bash

set -e
set -u

VERSION="2023.12.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="2fb353d8c0743bbbd0064404a275e2ca51edeb628b11447fcd9faf47e960d973"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
