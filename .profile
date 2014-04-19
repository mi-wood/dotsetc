
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop'

export EDITOR=vi

alias ls='ls -G'

export LSCOLORS=gxfxcxdxbxegedabagacad
