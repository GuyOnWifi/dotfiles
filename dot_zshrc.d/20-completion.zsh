# Delete key (zsh-autocomplete leaves it unbound by default)
bindkey "${terminfo[kdch1]}" delete-char

# Tab opens the completion menu
bindkey              '^I' menu-select
bindkey "$terminfo[kcbt]" menu-select

# Inside the menu: Tab cycles forward, Shift-Tab cycles back
bindkey -M menuselect              '^I'         menu-complete
bindkey -M menuselect "$terminfo[kcbt]" reverse-menu-complete

compdef eza=ls
