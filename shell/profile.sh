# MacPorts Installer addition on 2014-11-04_at_14:23:26: adding an appropriate
# PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Do this so we use Exuberant CTAGS instead of the default (lame) one
export PATH="/usr/local/bin:$PATH"

# Do this to use the colorgcc instead of regular gcc (-Garrett 1/26/15)
export PATH="$HOME/.bin_garrett:$PATH"

# Include sublime text CLI exec subl
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin"

# Show the shell where java is
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

export PATH="$PATH:$HOME/gar_bin"

# Finished adapting your PATH environment variable for use with MacPorts.

#PS1 = "\e[0;31m\h:\W \u\$ \e[m"
#PS1='\[\e[0;31m\]\h:\w \u\$ \[\e[m\]'
#PS1='(\t) \[\e]0;\u@\h: \w\a\]\[\033[0;32m\]\u@\h\[\033[00m\]:\[\033[0;34m\]\w\[\033[00m\]\$ '
#PS1='\[\e[0;37m\][\t] \[\e[0;32m\]\u\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
#PS1='[\t] \u:\w\[\e[0;33m\]\342\230\273\[\e[0m\] '
PS1='\[\e[1;37m\][\t] \u:\w\[\e[0;33m\]\342\230\273\[\e[0m\] '

# Keep history for longer
HISTSIZE=10000
HISTFILESIZE=20000

#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export LESS=-i
export GOPATH=$HOME/Documents/workspaces/go_space

shopt -s nocaseglob

alias cgrep='grep --color=always'
alias cp='cp -i'
alias dir='ls'
alias h='history'
alias ls='ls -F'
alias mv='mv -i'
alias rm='rm -i'
alias v='vim'

export PATH="$HOME/.cargo/bin:$PATH"
