# Ctrl-Left / Ctrl-Right: move by word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Ctrl-Backspace: delete word backward
bindkey "^H" backward-kill-word

# Ctrl-Delete: delete word forward
bindkey "^[[3;5~" kill-word
