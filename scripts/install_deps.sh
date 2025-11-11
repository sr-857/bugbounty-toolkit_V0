
#!/usr/bin/env bash
set -euo pipefail

if [[ $EUID -ne 0 ]]; then
  echo "Run as root (use sudo)." >&2
  exit 1
fi

apt-get update
# Core build deps
DEBIAN_FRONTEND=noninteractive apt-get install -y   git curl wget build-essential python3 python3-pip python3-venv   openjdk-17-jre-headless openjdk-17-jdk-headless   nmap masscan   libssl-dev libffi-dev cargo   # common utilities
  jq unzip

# Python wrappers
pip3 install --upgrade pip
pip3 install virtualenv

echo "Install per-tool dependencies manually as needed. This is a base set."
