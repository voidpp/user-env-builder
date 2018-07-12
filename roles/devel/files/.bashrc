
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/devel
source /usr/local/bin/virtualenvwrapper.sh

ps_red='\[\e[1;31m\]'
ps_green='\[\e[1;32m\]'
ps_yellow='\[\e[1;33m\]'
ps_blue='\[\e[1;34m\]'
ps_magenta='\[\e[1;35m\]'
ps_cyan='\[\e[1;36m\]'
ps_white='\[\e[1;37m\]'
ps_reset='\[\e[0m\]'

export PATH=$PATH:~/bin

__get_prompt() {
    local EXIT_CODE="$?"             # This needs to be first
    PS1=""

    if [ $VIRTUAL_ENV ]; then
	PS1+="($(basename $VIRTUAL_ENV)) "
    fi

    PS1+="$ps_red[ $ps_green\u$ps_white@$ps_yellow\h $ps_cyan\w $ps_magenta\$(vcprompt -f '(%n:%b)')$ps_red]"
    #PS1+="[ \u@\h \w \$(vcprompt -f '(%n:%b)')]"


    if [ $EXIT_CODE != 0 ]; then
	PS1+=" [${EXIT_CODE}]"
    fi

    PS1+="$ps_reset\$ "
}

PROMPT_COMMAND=__get_prompt

alias c='echo > /dev/null'
alias git.update='git stash && git pull --rebase && git submodule update && git stash pop'
alias git.vimdiff='git diff HEAD  | vim -'
alias git.pullr='git pull --rebase && git submodule init && git submodule update'
alias git.graph='git log --oneline --graph --decorate --all'
alias git.ds='git diff --cached'
alias l="ls -lh"
alias cve="create-virtualenv"

export EDITOR=vim
export COLUMNS

export PYTHON_EXECUTABLE=`which python3`
