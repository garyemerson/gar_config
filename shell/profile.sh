# MacPorts Installer addition on 2014-11-04_at_14:23:26: adding an appropriate
# PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

export PATH="/usr/local/bin:$PATH" # Use Exuberant CTAGS
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin" # sublime util subl
export PATH="$PATH:$HOME/gar_bin"
export PATH="$HOME/.cargo/bin:$PATH"

source $HOME/gar_bin/path_builder $HOME/gar_bin

# Show the shell where java is
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

export PS1='\[\e[0;37m\][\t] \u:\w\[\e[0;33m\]\342\230\273\[\e[0m\] '

# Keep history for longer
export HISTSIZE=10000
export HISTFILESIZE=20000

export LESS=-i
export GOPATH=$HOME/workspaces/go_space

shopt -s nocaseglob

alias cgrep='grep --color=always'
alias cp='cp -i'
alias dir='ls'
alias h='history'
alias ls='ls -F'
alias tree='tree -F'
alias mv='mv -i'
alias rm='rm -i'
alias v='vim'
alias gdb='gdb -q'
alias gitnew='git init && git add . && git commit -m "initial commit"'
