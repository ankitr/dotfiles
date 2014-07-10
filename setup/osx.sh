#!/usr/bin/env bash

# This script gets you set up with everything. It will bring in installers,
# ZSH, and a couple of other goodies. It will prompt you for a password at
# regular intervals.


### Install our installers. ###

echo "Installing Homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo "Installing pip"
sudo easy_install pip


### Get our shell. ###

echo "Installing ZSH"
brew install zsh
chsh -s $(which zsh)

# Consider forking and using something less vanilla.
echo "Getting Oh My ZSH"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh


### Unpack the RCs ###
echo "Setting up .vimrc"
cp ../vim/.vimrc $HOME/.vimrc

echo "Setting up .zshrc"
cp ../zsh/.zshrc $HOME/.zshrc


### Install helpful things ###
echo "Installing Git"
brew install git
cp ../git/.gitconfig $HOME/.gitconfig

echo "Installing languages."
brew install python
brew install python3
brew install ruby
brew install plt-racket

echo "Installing utilities."
brew install fish
brew install googlecl
brew install fontforge
brew install docker
brew install readline
brew install hub
brew install wget
brew install tree
