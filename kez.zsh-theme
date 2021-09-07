PROMPT="%{$fg_bold[white]%}%n%{$fg_bold[yellow]%}@%{$fg_bold[yellow]%}%m %b%{$fg[white]%}%1d"
PROMPT+=' $(git_prompt_info)%{$fg_bold[white]%}$ '
PS2=" %B%{$fg[yellow]%}...%{$fg[white]%}> "
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[white]%}^ "
ZSH_THEME_GIT_PROMPT_CLEAN=" "

# Highlighting
ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=white
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[alias]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=yellow,bold
ZSH_HIGHLIGHT_STYLES[arg0]=fg=yellow,bold
ZSH_HIGHLIGHT_STYLES[path]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[argument]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=yellow,bold
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow,bold
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow,bold
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=yellow,bold
