#!/usr/bin/env bash

set -e
set -u

VERSION="2021.7"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="d847de61ad6e6f12b95fe45daac058fe325cc39ee5def1c35a0424bec96a9db6"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
