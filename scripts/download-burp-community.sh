#!/usr/bin/env bash

set -e
set -u

VERSION="2023.3"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="064c3e51e45fe3e8e9e7c1cc1af4417faac598bb31486f8eed65d1626b5867c2"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
