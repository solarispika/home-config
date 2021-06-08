#!/usr/bin/env zsh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh
source $HOME/.zshrc
nvm install stable
bash <(curl -sL https://git.io/haskell-vim-now) --basic

ln -sf ~/.home-setup/vimrc.local .config/haskell-vim-now/
ln -sf ~/.home-setup/vimrc.local.pre .config/haskell-vim-now/
ln -sf ~/.home-setup/plugins.vim .config/haskell-vim-now/

ssh-keygen -t ed25519 -f $HOME/.ssh/id_ed25519 -N ""

