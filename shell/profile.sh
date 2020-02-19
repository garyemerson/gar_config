export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin" # sublime util subl
export PATH="$PATH:$HOME/gar_bin"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/usr/local/pgsql/bin"

if [ -e $HOME/gar_bin/path_builder ]; then
    source $HOME/gar_bin/path_builder $HOME/gar_bin
fi

export PS1='\[\e[0;2m\]\342\224\214[\t] \u@\H:\w\n\342\224\224\[\e[0;33m\]\342\230\273\[\e[0m\] '

# Keep history for longer
export HISTSIZE=100000
export HISTFILESIZE=200000
export HISTTIMEFORMAT="[%F %T] "
export HISTIGNORE="bg:fg"

export LESS='-i --clear-screen --max-forw-scroll=1 --max-back-scroll=1'
export LANG='en_US.UTF-8'

unset PROMPT_COMMAND
export PROMPT_COMMAND="history -a && history -c && history -r; $PROMPT_COMMAND"

shopt -s histappend
shopt -s nocaseglob

# Save multi-line commands as one command
shopt -s cmdhist

# Prepend cd to directory names automatically
shopt -s autocd 2> /dev/null
# Correct spelling errors during tab-completion
shopt -s dirspell 2> /dev/null
# Correct spelling errors in arguments supplied to cd
shopt -s cdspell 2> /dev/null

alias cgrep='grep --color=always'
alias cp='cp -i'
alias dir='ls'
alias h='HISTTIMEFORMAT= history'
alias hh='history'
alias ls='ls -F'
alias ll='ls -lh'
alias tree='tree -F'
alias mv='mv -i'
alias rm='rm -i'
alias v='vim'
alias gdb='gdb -q'
alias pstree='pstree -g 3'
alias clip='pbcopy'
alias utcnow='date -u "+%Y-%m-%dT%H:%M:%SZ"'
jj() {
    target_job=$(jobs | fzf --height 10 --reverse --color=light | sed -E 's/\[([0-9]+)\].*/\1/')
    if [ ! -z "$target_job" ]; then
        fg $target_job
    fi
}
gssh() {
    ssh -t $@ "bash --rcfile <(echo $(cat $HOME/.profile | gzip | base64 | tr -d \"\\r\\n\") | base64 --decode | gunzip)"
}
gscript() {
    #tmp=$(mktemp)
    #script -q /dev/null $@ > $tmp
    #cat $tmp
    script -q /dev/null $@
}
du-fmt() {
    du -sh "$@" | sort -hr
}
bench-url() {
    # from https://www.tecmint.com/test-website-loading-speed-in-linux-terminal/
    curl -s -w 'Testing Website Response Time for %{url_effective}\n\nDNS Lookup Time:\t%{time_namelookup}\nConnect Time:\t\t%{time_connect}\nPre-transfer Time:\t%{time_pretransfer}\nStart-transfer Time:\t%{time_starttransfer}\n\nTotal Time:\t\t%{time_total}\n' -o /dev/null $1
}
transfer-config() {
    scp -r ~/{.gitconfig,.tmux.conf,.profile,.vimrc,.vim} $@
}
foo() {
    echo -n $PWD
    #echo -n $(printf '%08d' $RANDOM)
    #sleep 1
    read -n 1 -s -r
    echo -ne "\r\e[K"
}

#
# INPUTRC
#
if [ -t 1 ]; then
    bind 'set completion-ignore-case on'

    bind 'TAB: menu-complete'
    bind '"\e[Z": "\e-1\C-i"'
    #"\e[Z": complete

    # Display matches for ambiguous patterns at first tab press
    #bind "set show-all-if-ambiguous on"

    # From https://unix.stackexchange.com/a/20830
    # Key bindings, up/down arrow searches through history
    #bind '"\e[A": "echo foobar\n"'
    bind -x '"\C-j": "jj"'
    bind -x '"\C-f": "foo"'
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
    bind '"\eOA": history-search-backward'
    bind '"\eOB": history-search-forward'
fi
