# python version
alias python=python3
alias pip=pip3

export PATH="/usr/local/bin:$PATH"

alias x86="arch -x86_64"
alias ibrew="arch -x86_64 /usr/local/bin/brew"

# make mac terminal print with pretty colors
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

# auto completes
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export LDFLAGS="-L/opt/homebrew/opt/readline/lib"
export CPPFLAGS="-I/opt/homebrew/opt/readline/include"

# Finished adapting your PATH environment variable for use with MacPorts.
# Add local node modules to the path
export PATH=./node_modules/.bin:$PATH

eval "$(rbenv init -)"
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

QT5PATH=/usr/local/Cellar/qt/5.11.2_1

# Brew stuff
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"
export Qt5_DIR=$(brew --prefix)/opt/qt5

# configure using nvm
USE_NVM=true
if $USE_NVM; then
  export PATH="/usr/local/opt/node@10/bin/:$PATH"
  export NVM_DIR="$HOME/.nvm"
  #export NVM_DIR=$(brew --prefix nvm)
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
else
  export PATH="/opt/node/node-v14.18.0-darwin-x64/bin/:$PATH"
fi

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

## ALIASES
#git stuff
alias gcam='git commit -am'
alias gcm='git commit -m'
alias gss='git status'
alias browse='git browse'

alias psef='ps -ef | grep '

alias code='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron'
export REACT_EDITOR=code

export TUNNEL_IP='54.226.113.126'
alias socks_proxy='ssh -D 54321 -CqNf ubuntu@$TUNNEL_IP; echo $(pgrep -f "ssh.*ubuntu@") > ~/.socks_proxy.pid ; echo "ssh connected with pid: $(cat ~/.socks_proxy.pid)"'
alias socks_proxy_stop='kill $(cat ~/.socks_proxy.pid) && echo "killed the socks_prox $(cat ~/.socks_proxy.pid)" ; rm ~/.socks_proxy.pid'
alias socks_on='networksetup -setsocksfirewallproxy "Wi-Fi" localhost 54321 && echo "All WiFi traffic being routed over port 54321"'
alias socks_off='networksetup -setsocksfirewallproxystate "Wi-Fi" off && echo "WiFi traffic back to normal"'

alias render_server='ssh -i ~/Dropbox/Scandy/_certs/codeDeployDevKeyPair.pem ubuntu@live.hoxel.app'

autoload -Uz compinit && compinit -i
setopt INTERACTIVE_COMMENTS
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"
