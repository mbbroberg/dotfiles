#!/bin/zsh 

if [[ -f ~/.Brewfile ]]; then
   echo "Brewfile already exists. Deleting the old one now."
   rm ~/.Brewfile
fi

echo "Creating a new Brewfile and tidying up."
brew bundle dump --global
brew bundle check 
brew bundle cleanup