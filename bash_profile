if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

eval "$(rbenv init -)"

ssh-agent 1>/dev/null 2>/dev/null
ssh-add $HOME/.ssh/crystal-mac 1>/dev/null 2>/dev/null

alias git='hub'
alias mvim='open -a MacVim.app'
alias psef='ps -ef | grep '

# Finished adapting your PATH environment variable for use with MacPorts.
# Add local node modules to the path
export PATH=./node_modules/.bin:$PATH
# configure using nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

#git stuff
alias gcam='git commit -am'
alias gcm='git commit -m'
alias gss='git status'
alias browse='git browse'

# atom please
alias atom='/Applications/Atom.app/Contents/Resources/app/atom.sh'


# make mac terminal print with pretty colors
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export ANDROID_SDK=/usr/local/opt/android-sdk
export ANDROID_NDK=/usr/local/opt/android-sdk/ndk-bundle
export ANDROID_NDK_HOME=/usr/local/opt/android-sdk/ndk-bundle
export ANDROID_HOME=$ANDROID_SDK

alias socks_proxy='ssh -D 54321 -CqN home.hcwiley.com'
alias socks_on='networksetup -setsocksfirewallproxy "Wi-Fi" localhost 54321'
alias socks_off='networksetup -setsocksfirewallproxystate "Wi-Fi" off'

alias python='python2.7'
alias python2='python'
export PATH="/usr/local/opt/qt5/bin:$PATH"
alias render_server='ssh -i ~/Dropbox/EntreScan/codeDeployDevKeyPair20160713.pem ubuntu@52.23.159.90'
