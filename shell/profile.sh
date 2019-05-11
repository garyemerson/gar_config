# MacPorts Installer addition on 2014-11-04_at_14:23:26: adding an appropriate
# PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

export PATH="/usr/local/bin:$PATH" # Use Exuberant CTAGS
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin" # sublime util subl
export PATH="$PATH:$HOME/gar_bin"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/usr/local/pgsql/bin"

source $HOME/gar_bin/path_builder $HOME/gar_bin

# Show the shell where java is
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

export PS1='\[\e[0;37m\]\342\224\214[\t] \u:\w\n\342\224\224\[\e[0;33m\]\342\230\273\[\e[0m\] '
#export PS1='\[\e[0;37m\][\t] \u:\w\n\[\e[0;33m\]\342\230\273\[\e[0m\] '
#export PS1='\[\e[0;37m\]\342\224\214[\t] \u:\w\n\342\224\224\[\e[0m\]\342\226\240 '

# Keep history for longer
export HISTSIZE=100000
export HISTFILESIZE=200000
export HISTTIMEFORMAT="[%F %T] "

export LESS='-i --clear-screen --max-forw-scroll=1 --max-back-scroll=1'
export GOPATH=$HOME/workspaces/go_space
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export LANG='en_US.UTF-8'

shopt -s histappend
shopt -s nocaseglob

alias cgrep='grep --color=always'
alias cp='cp -i'
alias dir='ls'
alias h='HISTTIMEFORMAT= history'
alias hh='history'
alias ls='ls -F'
alias tree='tree -F'
alias mv='mv -i'
alias rm='rm -i'
alias v='vim'
alias gdb='gdb -q'
alias gitnew='git init && git add . && git commit -m "initial commit"'
alias pstree='pstree -g 3'
alias clip='pbcopy'
alias jj='jobs'
alias utcnow='date -u "+%Y-%m-%dT%H:%M:%SZ"'
