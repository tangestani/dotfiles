#!/usr/bin/env bash

if ! hash git &> /dev/null; then
  echo "Install git first"
  exit 1
fi
if ! hash zsh &> /dev/null; then
  echo "Install zsh first"
  exit 1
fi
  
echo "Installing pathogen..."

mkdir -p ~/.vim/autoload ~/.vim/bundle &&\
curl -SsLo ~/.vim/autoload/pathogen.vim \
  https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo "Installing solarized..."

(cd ~/.vim/bundle && git clone git://github.com/altercation/vim-colors-solarized.git)

echo "Installing oh my zsh..."

curl -SsL https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

echo "Install iTerm2:"
echo "- Enable copy to clipboard on selection."
echo "- Disable draw bold text in bright colors."
echo "- Set terminal emulation to xterm-256color."

exec ./link.sh
