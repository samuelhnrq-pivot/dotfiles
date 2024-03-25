#!/bin/zsh

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
curl https://get.volta.sh | bash
[[ ! -e ~/.zprezto ]] && \
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

source "$(/opt/homebrew/bin/brew shellenv)"
brew install oh-my-posh vim


