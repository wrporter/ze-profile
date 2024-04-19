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

###########################################################
# Docker

function dockerDebug() {
	docker run --rm -it ${1} sh -il
}

# Support for M1 Macs. See https://stackoverflow.com/questions/65612411/forcing-docker-to-use-linux-amd64-platform-by-default-on-macos/69636473#69636473
# export DOCKER_DEFAULT_PLATFORM=linux/amd64

###########################################################
# Git

function gitFetchMain() {
	branch=$(git remote show origin | sed -n '/HEAD branch/s/.*: //p')
	git fetch origin ${branch}:${branch} && git checkout ${branch}
}

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
# Go

export GOPATH=~/code
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

###########################################################
