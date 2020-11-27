#!/usr/bin/env bash

set -e
set -u

VERSION="2020.11.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="46e763b1f7370f85e8d5e6d6a94e3e7a724a38c786584dd2f8650ea856f42328"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
