if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash ]; then
    . /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
fi

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh


# Use the \[ escape to begin a sequence of non-printing characters,
# and the \] escape to signal the end of such a sequence.
# Define some colors first: ( nicked from https://gist.github.com/hernamesbarbara/1937937)
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

# Set up some config for the git related stuff in the prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

# And then set up the prompt
#export PS1="[\\h:\\w ${GREEN}\$(git branch-name 2> /dev/null)${NC}]\\n$ "
#export PS1="[\\h:\\w ${GREEN}\$(__git_ps1)${NC}\\n$ "
export PS1="\[\`if [[ \$? = "0" ]]; then echo '\e[32m\h\e[0m'; else echo '\e[31m\h\e[0m' ; fi\`:\\w ${BLUE}\$(__git_ps1)${NC}\\n$ "

export GOPATH=~/Projects/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/bin

# Generic aliases based on (almost) bog standard tools
alias reload='source ~/.bash_profile && source ~/.bashrc'
alias untar='tar -zxvf '
alias wget='wget -c '
alias getpass="openssl rand -base64 20"
alias sha='shasum -a 256 '
alias www='python -m SimpleHTTPServer 8000'
alias ping='ping -c 5'
alias ipe='curl ipinfo.io/ip'
alias ipi='ipconfig getifaddr en0'
alias c='clear'
alias weather='curl -4 http://wttr.in/Sydney'
alias moon='curl -4 http://wttr.in/Moon'

# Some specific tools
alias t='todo.sh -d ~/Documents/todo/todo.cfg'
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"

# Setup a custom git command for dealing with dotfiles in home
alias config='/usr/bin/git --git-dir=/Users/gilmae/.cfg/ --work-tree=/Users/gilmae'

# script sourced from Jess Frazelle to cleanup docker images
dcleanup(){
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}
