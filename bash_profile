export PATH=$PATH:/usr/local/sbin
PYTHONPATH="/usr/local/lib":$PYTHONPATH
export PYTHONPATH
#for postgres
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

alias runserver='python manage.py runserver 0.0.0.0:8000'
alias syncdb='python manage.py syncdb'
alias mig='python manage.py migrate'
alias shell='python manage.py shell'
alias git='hub'
alias mvim='open -a MacVim.app'
alias psef='ps -ef | grep '

# Finished adapting your PATH environment variable for use with MacPorts.
# Add local node modules to the path
export PATH=./node_modules/.bin:$PATH

#git stuff
alias gcam='git commit -am'
alias gcm='git commit -m'
alias gss='git status'
alias browse='git browse'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
