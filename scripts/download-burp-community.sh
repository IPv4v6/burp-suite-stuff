#!/usr/bin/env bash

set -e
set -u

VERSION="2022.2.4"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="5def560d112803c4ad2dd4c33b1ff4b8fbc508da66bb9733a577c8377995938f"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
