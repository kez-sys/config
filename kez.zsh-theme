PROMPT="%B%{$fg[white]%}%n%{$fg[yellow]%}@%{$fg[yellow]%}%m %{$fg_bold[black]%}%~"
PROMPT+=' $(git_prompt_info)%{$fg[white]%}$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}* "
ZSH_THEME_GIT_PROMPT_CLEAN=""
