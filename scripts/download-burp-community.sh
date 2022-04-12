#!/usr/bin/env bash

set -e
set -u

VERSION="2022.3.4"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="31134ca2355b3777705db963fbdb121867e40e2bfcca3bc8a28553ae0355597d"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
