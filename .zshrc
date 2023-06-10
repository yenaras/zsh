# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
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

export PATH="$HOME/.poetry/bin:$PATH"
source /home/brandon/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/brandon/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/brandon/.config/zsh/LS_COLORS/dircolors.sh
