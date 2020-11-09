#!/usr/bin/env bash

set -e
set -u

VERSION="2020.11"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="3d21dfb8daaa95137db713a8b62f2e98cd179004f8149beea6153e5193cca3a2"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
