#!/bin/bash

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Local alias definitions.
# To seperate from the aliases definitions base.
if [ -f ~/.bash_local_aliases ]; then
    . ~/.bash_local_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PATH=/usr/lib/ccache:$PATH
export LDFLAGS="-lstdc++ -lm"

# Productive prompt : https://starship.rs/
eval "$(starship init bash)"

# Zoxide requirements
eval "$(zoxide init bash)"

# Alacritty requirements
export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig

# Rust requirements
source "$HOME/.cargo/env"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
