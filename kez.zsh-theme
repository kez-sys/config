PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M%{$fg[red]%}] %{$fg[magenta]%}%~"
PROMPT+=' $(git_prompt_info)%{$reset_color%}$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}/%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%}/ %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[magenta]%}/"
