PROMPT="%{$fg_bold[white]%}%n%{$fg_bold[yellow]%}@%{$fg_bold[yellow]%}%m %b%{$fg[white]%}%~"
PROMPT+=' $(git_prompt_info)%{$fg_bold[white]%}$ '
PS2=" %B%{$fg[yellow]%}...%{$fg[white]%}> "
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[white]%}^ "
ZSH_THEME_GIT_PROMPT_CLEAN=" "
