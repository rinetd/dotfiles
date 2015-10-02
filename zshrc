export DOT="$HOME/.dotfiles"

source "$DOT/lib/utils"
source "$DOT/bash/aliases"
source "$DOT/zsh/colors"
source "$DOT/zsh/history"
source "$DOT/zsh/options"
source "$DOT/zsh/bindings"
source "$DOT/zsh/prompt"
source "$DOT/zsh/title"
source "$DOT/zsh/completion"

# Portal FTW!
print -P "%F{231}GLaDOS v1.09 (c) 1982 Aperture Science, Inc.%f"

[[ -e "$HOME/.secrets" ]] && source "$HOME/.secrets"

[[ -e "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"

# zsh-syntax-highlighting.zsh needs to be sourced at the end
source "$DOT/zsh/plugins"

# vim: set ft=zsh :
