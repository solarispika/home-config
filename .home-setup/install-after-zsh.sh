#!/usr/bin/env zsh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh
source $HOME/.zshrc
nvm install stable
bash <(curl -sL https://git.io/haskell-vim-now) --basic

ln -sf ~/.home-setup/vimrc.local .config/haskell-vim-now/
ln -sf ~/.home-setup/vimrc.local.pre .config/haskell-vim-now/
ln -sf ~/.home-setup/plugins.vim .config/haskell-vim-now/

ssh-keygen -t ed25519 -f $HOME/.ssh/id_ed25519 -N ""

command -v tmux > /dev/null 2>&1 || sudo apt-get install tmux
command -v ruby > /dev/null 2>&1 || sudo apt-get install ruby
sudo gem install tmuxinator

command -v python > /dev/null 2>&1 || sudo apt-get install python3 python-is-python3 python3-pip
command -v pip > /dev/null 2>&1 || sudo apt-get install python3-pip
pip install --user powerline-status

git clone https://github.com/gpakosz/.tmux.git
ln -sf $HOME/.tmux/.tmux.conf $HOME/
cp $HOME/.tmux/.tmux.conf.local $HOME/
