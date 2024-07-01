#!/usr/bin/env bash

set -e
set -u

VERSION="2024.6"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="d029d4f9ba273890f916e797a77b869409a90ca9b0548d2cda31a6bd0bcb0e20"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
