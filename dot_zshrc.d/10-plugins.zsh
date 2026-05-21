source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source <(fzf --zsh)

# fzf-tab: Tab opens an fzf picker over completion candidates.
# Must be sourced AFTER compinit (handled in 20-completion.zsh).
source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh
