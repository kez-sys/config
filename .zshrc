# Kez's zsh

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=3
DISABLE_AUTO_TITLE="true"
plugins=(git vi-mode mix tmux)
source $ZSH/oh-my-zsh.sh

# Export
export kfiles='/mnt/k'
export cfiles='/mnt/c'
alias kfiles=$kfiles
alias cfiles=$cfiles

# Aliases
alias confzsh='vim ~/.zshrc'
alias confvim='vim ~/.vimrc'
alias ref='source ~/.zshrc'
alias conftmux='vim ~/.tmux.conf'
alias cp="cp -v"
alias rm="rm -v"
alias mv="mv -v"
alias rmdir="rmdir -v"
alias mkdir="mkdir -v"
alias wino='explorer.exe .'
alias vmshut='cmd.exe | wsl.exe --shutdown'
alias win~='/mnt/c/Users/Asus/'
alias desk~='/mnt/c/Users/Asus/Desktop'

#History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use vim keys n tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

source $ZSH/oh-my-zsh.sh

# WSL remove console highlight
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

# X server - may cause delay
export DISPLAY=$(awk '/nameserver/ {print $2}' /etc/resolv.conf):0.0

# Load zsh-syntax-highlighting; should be last.
source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf stuff - commented out cause wsl IO issues
# FZF_DEFAULT_OPTS='--height 40% --layout=reverse --extended'
# FZF_DEFAULT_COMMAND='rg --hidden -l ""'

