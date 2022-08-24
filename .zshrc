# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt beep extendedglob nomatch notify
bindkey -v
autoload -U $ZDOTDIR/tmux_cursor_fix
zstyle :compinstall filename '/home/brandon/.config/zsh/.zshrc'

# source alias file
source /$HOME/.config/zsh/aliases

# source OSC 7 escape sequence script
source /$XDG_CONFIG_HOME/zsh/osc7_escape_sequence

# poetry autocompletion
fpath+=~/.zfunc

autoload -Uz compinit
compinit
# End of lines added by compinstall
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# source colored man page script
autoload -U $XDG_CONFIG_HOME/zsh/colored_manpages


# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

#source /usr/bin/virtualenvwrapper.sh
#eval "$(pyenv init --path)"
#eval "$(pyenv virtualenv-init -)"

export PATH="$HOME/.poetry/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/brandon/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/brandon/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/brandon/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/brandon/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

