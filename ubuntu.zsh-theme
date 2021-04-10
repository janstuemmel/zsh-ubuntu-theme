prompt_return_code() {
  echo "%(?..%{$fg_bold[red]%}↵%?%{$reset_color%})"
}

prompt_dir() {
  echo "%{$fg_bold[blue]%}%2~%{$reset_color%}"
}

prompt_name() {
  echo "%{$fg_bold[green]%}%n@%m%{$reset_color%}"
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='$(prompt_name):$(prompt_dir)\$$(prompt_return_code)$(git_prompt_info) '
