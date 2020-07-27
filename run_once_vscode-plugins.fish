#!/home/linuxbrew/.linuxbrew/bin/fish

# Save current state of extensions 
code --list-extensions > /tmp/vscodelistextensions

# append to chezmoi saved state of extensions
cat /tmp/vscodelistextensions ~/.vscode/extensions-list | uniq -u > ~/.vscode/extensions-list

# install them 
cat ~/.vscode/extensions-list | xargs -n1 code --install-extension