#!/usr/bin/env zsh


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh
source $HOME/.zshrc
nvm install stable
bash <(curl -sL https://git.io/haskell-vim-now) --basic

ln -s ~/vimrc.local .config/haskell-vim-now/
ln -s ~/vimrc.local.pre .config/haskell-vim-now/
ln -s ~/plugins.vim .config/haskell-vim-now/
