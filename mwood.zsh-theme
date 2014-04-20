# vim:ft=zsh ts=2 sw=2 sts=2

rvm_current() {
  if [[ `rvm current` == "system" ]] then
    rvm current 2>/dev/null
  else
    rvm current | awk -F '-' '{$1=""; print $0}' 2>/dev/null
  fi
}

rbenv_version() {
  rbenv version 2>/dev/null | awk '{print $1}'
}

PROMPT='
%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info) ⌚ %{$fg_bold[red]%}%*%{$reset_color%}
$ '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}⭠ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

RPROMPT='%{$fg_bold[red]%}$(rvm_current)%{$reset_color%}'
