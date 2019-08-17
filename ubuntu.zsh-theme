if [[ $UID -eq 0 ]]; then
  local user_symbol='#'
else
  local user_symbol='$'
fi

local return_code="%(?..%{$fg_bold[red]%}↵%?%{$reset_color%})"
local git_info='$(git_prompt_info)'

PROMPT="%{$fg_bold[green]%}%n@%m:%{$fg_bold[blue]%}%~%{$reset_color%}%{$user_symbol%}%{$return_code%}%{$git_info%}%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""