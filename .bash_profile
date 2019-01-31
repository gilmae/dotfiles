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
