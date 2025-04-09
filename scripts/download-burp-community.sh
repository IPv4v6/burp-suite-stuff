#!/usr/bin/env bash

set -e
set -u

VERSION="2025.3.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="89b6bf5bff677819881b5a975335cdd4bc5772be6352c57b1f6130b62843990a"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
