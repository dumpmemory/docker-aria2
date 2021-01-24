#!/usr/bin/env bash

# Check CPU architecture
ARCH=$(uname -m)

echo -e "${INFO} Check CPU architecture ..."
if [[ ${ARCH} == "x86_64" ]]; then
    ARCH="aria2-1.35.0-static-linux-amd64.tar.gz"
elif [[ ${ARCH} == "aarch64" ]]; then
    ARCH="aria2-1.35.0-static-linux-arm64.tar.gz"
elif [[ ${ARCH} == "armv7l" ]]; then
    ARCH="aria2-1.35.0-static-linux-armhf.tar.gz"
else
    echo -e "${ERROR} This architecture is not supported."
    exit 1
fi

# Download files
echo "Downloading binary file: ${ARCH}"
TAG=$(cat /qbittorrent/ReleaseTag)
echo "qbittorrent version: ${TAG}"
curl -L "https://github.com/SuperNG6/docker-aria2/releases/download/2021.01.24/${ARCH}" | tar -xz

echo "Download binary file: ${ARCH} completed"
