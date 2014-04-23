# vim:ft=zsh ts=2 sw=2 sts=2

rvm_current() {
  rvm current |   cut -d-  -f2- 2>/dev/null
}
rbenv_version() {
  rbenv version 2>/dev/null | awk '{print $1}'
}

PROMPT='
%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info) ⌚ %{$fg_bold[magenta]%}%*%{$reset_color%}
$ '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[cyan]%}⭠ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

RPROMPT='%{$FG[135]%}$(rbenv_version)%{$reset_color%}'
