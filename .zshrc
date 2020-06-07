###########################################################
# ZSH Config

export ZSH="~/.oh-my-zsh"
ZSH_THEME="wesp"
plugins=(git)
source $ZSH/oh-my-zsh.sh

###########################################################
# Aliases

alias src='source ~/.zshrc'

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
export OVERRIDE_IP=${CURRENT_IP}

###########################################################
# Go

export GOPATH=~/code/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:~/bin:/usr/local/mysql/bin:~/bin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/mysql/bin:$PATH

###########################################################
