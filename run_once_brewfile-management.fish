{{ if eq .chezmoi.os "linux" -}}
#!/home/linuxbrew/.linuxbrew/bin/fish
{{ else if eq .chezmoi.os "darwin" -}}
#!/usr/local/bin/fish
{{ end -}}
brew bundle --file=~/.Brewfile 
