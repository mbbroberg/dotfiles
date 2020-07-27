# Workaround for .profile entry to kickstart Homebrew
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# A prettier prompt
starship init fish | source

# Managing language versions with *env
# From https://angristan.xyz/how-to-use-nvm-rbenv-pyenv-goenv-with-fish-shell/
# If you run into issues with pyenv: https://github.com/pyenv/pyenv/issues/32#issuecomment-482980350
source (pyenv init - | psub)
source (goenv init - | psub)
source (rbenv init - | psub)
source (nodenv init - | psub)
