DEFAULT_USER="mbbroberg"
COMPLETION_WAITING_DOTS="true"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

unsetopt nomatch
setopt APPEND_HISTORY
setopt INTERACTIVE_COMMENTS
setopt HIST_FIND_NO_DUPS 		# no duplicates in history


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)


eval "$(pyenv init -)"
PATH=$(pyenv root)/shims:$PATH
