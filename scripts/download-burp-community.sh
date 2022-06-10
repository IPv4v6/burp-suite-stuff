#!/usr/bin/env bash

set -e
set -u

VERSION="2022.5.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="b756bb4268cf8c070305c27e2cf1b5a41f615775de17d209c27aecfec91abad9"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
