export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export EDITOR="nvim"
export VISUAL="nvim"
export TERM="tmux-256color"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

export VI_MODE_SETCURSOR=true

export MANPAGER="less -R --use-color -Dd+r -Du+b"

export WORKON_HOME="$XDG_CONFIG_HOME/virtualenvs"

#cs50 variables
#export CC="clang"
#export CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
#export LDLIBS="-lcrypt -lcs50 -lm"
#export LD_LIBRARY_PATH="/usr/local/lib"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
