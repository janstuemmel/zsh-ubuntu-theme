return_code() {
  echo "%(?..%{$fg_bold[red]%}↵%?%{$reset_color%})"
}

directory() {
  echo "%{$fg_bold[blue]%}%2~%{$reset_color%}"
}

name() {
  echo "%{$fg_bold[green]%}%n@%m%{$reset_color%}"
}

git () {
  echo "$(git_prompt_info)"
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT="$(name):$(directory)\$$(return_code)$(git) "
