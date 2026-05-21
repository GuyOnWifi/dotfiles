# Load the completion system. -C skips the security audit on the dump file
# (~30ms saved). Required because we no longer use zsh-autocomplete (which
# previously ran compinit for us).
autoload -Uz compinit && compinit -C

# Disable the built-in menu — fzf-tab replaces it
zstyle ':completion:*' menu no

# Use group headers so fzf-tab shows section names (Flags, Files, ...)
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '[%d]'

# fzf-tab look & feel
zstyle ':fzf-tab:*' fzf-flags --height=40% --reverse --border
zstyle ':fzf-tab:*' switch-group ',' '.'

# Delete key (was previously left unbound by zsh-autocomplete)
bindkey "${terminfo[kdch1]}" delete-char

compdef eza=ls
