#!/bin/sh

set -euo pipefail

command -v zsh > /dev/null 2>&1 || sudo apt-get install zsh
command -v git > /dev/null 2>&1 || sudo apt-get install git

git config --global user.name "Sung, Po Han"
git config --global user.email "solarispika@gmail.com"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc || true

zsh ./setup-home-after-zsh.sh

echo "Setup completed. Please login again."
