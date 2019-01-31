# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/gilmae/.oh-my-zsh

ZSH_THEME="agnoster"


plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
)

source $ZSH/oh-my-zsh.sh

export GOPATH=~/Projects/go
export PATH=$PATH:$GOPATH/bin
alias t='todo.sh -d ~/Documents/todo/todo.cfg'
alias shuf=gshuf
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"

# script sourced from Jess Frazelle to cleanup docker images
dcleanup(){
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}

alias config='/usr/bin/git --git-dir=/Users/gilmae/.cfg/ --work-tree=/Users/gilmae'
