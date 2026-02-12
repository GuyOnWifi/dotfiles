# KEYBOARD SHORTCUTS & ALASES
 bindkey              '^I' menu-select
 bindkey "$terminfo[kcbt]" menu-select

 bindkey -M menuselect              '^I'         menu-complete
 bindkey -M menuselect "$terminfo[kcbt]" reverse-menu-complete

alias ls='eza --icons'
compdef eza=ls
alias q='qs -c ii'
