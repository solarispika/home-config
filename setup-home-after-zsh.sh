#!/usr/bin/env zsh


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh
source $HOME/.zshrc
nvm install stable
bash <(curl -sL https://git.io/haskell-vim-now) --basic

