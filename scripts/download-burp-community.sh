#!/usr/bin/env bash

set -e
set -u

VERSION="2024.4.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="5be00421baa7782394c8521c5cda8d51ab141887593b841d2ce5c63f9eb10dd2"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
