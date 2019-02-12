# Use the \[ escape to begin a sequence of non-printing characters,
# and the \] escape to signal the end of such a sequence.
# Define some colors first:
RED='\[\e[1;31m\]'
BOLDYELLOW='\[\e[1;33m\]'
GREEN='\[\e[0;32m\]'
BLUE='\[\e[1;34m\]'
DARKBROWN='\[\e[1;33m\]'
DARKGRAY='\[\e[1;30m\]'
CUSTOMCOLORMIX='\[\e[1;30m\]'
DARKCUSTOMCOLORMIX='\[\e[1;32m\]'
LIGHTBLUE="\[\033[1;36m\]"
PURPLE='\[\e[1;35m\]' #git branch
# EG: GREEN="\[\e[0;32m\]" 
#PURPLE='\[\e[1;35m\]'
#BLUE='\[\e[1;34m\]'
NC='\[\e[0m\]' # No Color

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

#export PS1="[\\h:\\w ${GREEN}\$(git branch-name 2> /dev/null)${NC}]\\n$ "
#export PS1="[\\h:\\w ${GREEN}\$(__git_ps1)${NC}\\n$ "
export PS1="\[\`if [[ \$? = "0" ]]; then echo '\e[32m\h\e[0m'; else echo '\e[31m\h\e[0m' ; fi\`:\\w ${GREEN}\$(__git_ps1)${NC}\\n$ "
export GOPATH=~/Projects/go
export PATH=$PATH:$GOPATH/bin
alias t='todo.sh -d ~/Documents/todo/todo.cfg'
alias untar='tar -zxvf '
alias wget='wget -c '
alias getpass="openssl rand -base64 20"
alias sha='shasum -a 256 '
alias www='python -m SimpleHTTPServer 8000'
alias ping='ping -c 5'
alias ipe='curl ipinfo.io/ip'
alias ipi='ipconfig getifaddr en0'
alias c='clear'
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias config='/usr/bin/git --git-dir=/Users/gilmae/.cfg/ --work-tree=/Users/gilmae'

# script sourced from Jess Frazelle to cleanup docker images
dcleanup(){
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}
