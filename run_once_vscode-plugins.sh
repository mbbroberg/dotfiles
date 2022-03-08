#!/bin/zsh 

# How to actually append installed plugins into a list of plugins 
code --list-extensions >> ~/.vscode/extensions-list
# then install 
uniq ~/.vscode/extensions-list | xargs -n1 code --install-extension
