#!/usr/bin/env zsh
# This file is sourced by all instances of Zsh, and thus, it should be kept as
# small as possible and should only define environment variables.

source $DOT/zsh/lib/utils

export DOT=$HOME/.dotfiles

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

# Editors
export EDITOR="vim"
export VISUAL=$EDITOR
export PAGER="less"
export GOPATH=$HOME/dev/go
export WORKON_HOME=$HOME/.venvs

# Language
if [[ -z "$LANG" ]]; then
  export LANG="en_US.UTF-8"
fi

if [[ -z "$TMUX" ]]; then
  export TERM="xterm-256color"
else
  export TERM="screen-256color"
fi

# Less

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Temporary Files
if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$USER"
  mkdir -p -m 700 "$TMPDIR"
fi

export HISTFILE="$HOME/.history"

# Increase the maximum number of commands to remember
# (default is 500)
export HISTSIZE=100000

# some settings to be more colorful
export CLICOLOR=1
export GREP_COLOR='1;32'
export CLICOLOR=true
export LSCOLORS=ExGxFxdxCxDxDxBxBxExEx

[[ -z "$DISPLAY" ]] && export DISPLAY=":0.0"


####################################################################################
# Plugins                                                                          #
####################################################################################

# FZF
export FZF_DEFAULT_OPTS="--extended --cycle"

# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='
  (git ls-tree -r --name-only HEAD ||
    ag -l -g "" ||
    find * -name ".*" -prune -o -type f -print -o -type l -print) 2> /dev/null'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND=${FZF_DEFAULT_COMMAND}

# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="$PATH:/usr/local/opt/fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */usr/local/opt/fzf/man* && -d "/usr/local/opt/fzf/man" ]]; then
  export MANPATH="$MANPATH:/usr/local/opt/fzf/man"
fi

# NVM
export NVM_DIR=${HOME}/.nvm

TMPPREFIX="${TMPDIR%/}/zsh"
if [[ ! -d "$TMPPREFIX" ]]; then
  mkdir -p "$TMPPREFIX"
fi

source $DOT/zsh/lib/path
