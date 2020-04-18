#!/bin/bash

# enable color support of ls and also add handy aliases
alias ls='ls -a --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
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

# Anatoscope custom settings
eval "$(register-python-argcomplete3 deployment)"
export PATH=/usr/lib/ccache:$PATH
export PATH=~/anaconda3/bin:$PATH
export PATH=~/Softwares/mattermost-desktop-4.4.0-linux-x64/mattermost-desktop:$PATH
export LDFLAGS="-lstdc++ -lm"

# Fast cd command : https://github.com/wting/autojump
source "/usr/share/autojump/autojump.bash"

# Productive prompt : https://starship.rs/
eval "$(starship init bash)"
