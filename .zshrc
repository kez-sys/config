# Kez's zsh

# Oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=3
DISABLE_AUTO_TITLE="true"
DISABLE_AUTO_UPDATE=true
plugins=(
  git
  tmux
  vi-mode
  mix
  ssh-agent
  elixir
  asdf
  zsh-syntax-highlighting
)

ZSH_THEME="kez"
source $ZSH/oh-my-zsh.sh

# Export
export kfiles='/mnt/k'
export cfiles='/mnt/c'
alias kfiles=$kfiles
alias cfiles=$cfiles

# Aliases
# alias vim="nvim"
alias cp="cp -iv"
alias rm="rm -iv"
alias mv="mv -iv"
alias mkdir="mkdir -v"
alias qopw="vim $kfiles/Dump/template"
alias utyr="vim $kfiles/Dump/d.list"
alias explo='explorer.exe .'
alias vmshut='cmd.exe | wsl.exe --shutdown'
alias win~='/mnt/c/Users/kjsf'
alias desk~='/mnt/c/Users/kjsf/Desktop'
alias graph='git log --all --decorate --oneline --graph'

# Docker aliases
alias dr="docker-compose run --rm web"
alias drs="docker-compose run --rm --service-ports web"
alias dcu="docker-compose up"

# Use vim keys n tab complete menu:
zstyle ':completion:*' list-colors
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# WSL remove console highlight
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# X server - may cause delay
export DISPLAY=$(awk '/nameserver/ {print $2}' /etc/resolv.conf):0.0

# Fzf
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Elixir && Erlang
export ERL_AFLAGS="-kernel shell_history enabled"
export KERL_BUILD_DOCS=yes

# Zsh autocomplete
autoload -Uz compinit && compinit
