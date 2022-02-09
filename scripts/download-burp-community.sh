#!/usr/bin/env bash

set -e
set -u

VERSION="2022.1.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="17c8dda922a6c08ca61423315d659c688604a03a67d4b209f7d7137804c84ca0"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
