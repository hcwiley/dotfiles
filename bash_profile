# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

#test -r /sw/bin/init.sh && . /sw/bin/init.sh
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/Library/PostgreSQL/9.1/bin:$PATH
PYTHONPATH="/usr/local/lib":$PYTHONPATH
export PYTHONPATH
#for postgres
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

alias art72='cd /Users/hcwiley/decode72/art72/hg/art72/portfolio'
alias runserver='python manage.py runserver 0.0.0.0:8000'
alias syncdb='python manage.py syncdb'
alias mig='python manage.py migrate'
alias shell='python manage.py shell'
alias hcw='cd /Users/hcwiley/decode72/hcwiley-django/portfolio'
alias code_art='cd /Users/hcwiley/github/code-art/git/code.art/code.art72.org/tub'
alias git='hub'
#alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

# Add local node modules to the path
export PATH=./node_modules/.bin:$PATH

#git stuff
source ~/.git-completion.bash
alias gcam='git commit -am'
