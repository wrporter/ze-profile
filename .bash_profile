###########################################################
# Colors

# Reset
off="\[\e[0m\]"

# Regular Colors
black="\[\e[0;30m\]"
red="\[\e[0;31m\]"
green="\[\e[0;32m\]"
yellow="\[\e[0;33m\]"
blue="\[\e[0;34m\]"
purple="\[\e[0;35m\]"
cyan="\[\e[0;36m\]"
white="\[\e[0;37m\]"

# Bold
Black="\[\e[1;30m\]"
Red="\[\e[1;31m\]"
Green="\[\e[1;32m\]"
Yellow="\[\e[1;33m\]"
Blue="\[\e[1;34m\]"
Purple="\[\e[1;35m\]"
Cyan="\[\e[1;36m\]"
White="\[\e[1;37m\]"

# Underline
_black_="\[\e[4;30m\]"
_red_="\[\e[4;31m\]"
_green_="\[\e[4;32m\]"
_yellow_="\[\e[4;33m\]"
_blue_="\[\e[4;34m\]"
_purple_="\[\e[4;35m\]"
_cyan_="\[\e[4;36m\]"
_white_="\[\e[4;37m\]"

# Background
on_black="\[\e[0;40m\]"
on_red="\[\e[0;41m\]"
on_green="\[\e[0;42m\]"
on_yellow="\[\e[0;43m\]"
on_blue="\[\e[0;44m\]"
on_purple="\[\e[0;45m\]"
on_cyan="\[\e[0;46m\]"
on_white="\[\e[0;47m\]"

# High Intensty
bLACK="\[\e[0;90m\]"
rED="\[\e[0;91m\]"
gREEN="\[\e[0;92m\]"
yELLOW="\[\e[0;93m\]"
bLUE="\[\e[0;94m\]"
pURPLE="\[\e[0;95m\]"
cYAN="\[\e[0;96m\]"
wHITE="\[\e[0;97m\]"

# Bold High Intensty
BLACK="\[\e[1;90m\]"
RED="\[\e[1;91m\]"
GREEN="\[\e[1;92m\]"
YELLOW="\[\e[1;93m\]"
YELLOW="\[\e[1;93m\]"
BLUE="\[\e[1;94m\]"
PURPLE="\[\e[1;95m\]"
CYAN="\[\e[1;96m\]"
WHITE="\[\e[1;97m\]"

# High Intensty backgrounds
on_BLACK="\[\e[0;100m\]"
on_RED="\[\e[0;101m\]"
on_GREEN="\[\e[0;102m\]"
on_YELLOW="\[\e[0;103m\]"
on_BLUE="\[\e[0;104m\]"
on_PURPLE="\[\e[10;95m\]"
on_CYAN="\[\e[0;106m\]"
on_WHITE="\[\e[0;107m\]"

function color_terminal {
    local user_and_host="${green}\u${cyan}@${purple}\h${cyan}:"
    local current_location="${Blue}\w"
    export PS1="${user_and_host}${current_location}${off}$ "
    export CLICOLOR=1
    export LSCOLORS=ExFxBxDxCxegedabagacad
}
color_terminal

###########################################################
# Aliases

alias src='source ~/.bash_profile'

alias ls='ls -GFh'
alias ll='ls -GFhla'

function dockerDebug() {
	docker run --rm -it ${1} sh -il
}

alias gitFetchMaster='git fetch origin master:master'
alias gitPruneBranches='git branch | grep -E "feature|hotfix|bug|release" | xargs git branch -D'
alias gitUndoLastCommitSoft='git reset --soft HEAD~1'
alias gitUndoLastCommitHard='git reset --hard HEAD~1'

###########################################################
# SSH

function clear_host() {
    sed -i '' "$1 d" ~/.ssh/known_hosts
}

###########################################################
# Environment

export CURRENT_INTERFACE=`route get 10.10.10.10 | grep interface | awk '{print $2}'`
export CURRENT_IP=`(ifconfig $CURRENT_INTERFACE 2>/dev/null) | grep "inet " | awk '{print $2}' | head -n 1`

###########################################################
