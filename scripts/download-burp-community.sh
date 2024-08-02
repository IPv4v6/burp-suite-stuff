#!/usr/bin/env bash

set -e
set -u

VERSION="2024.7"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="643fca6d8e6a70562fd8b3a9c38c5f826fba79ca6f992f6e19399c7d05417bee"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
