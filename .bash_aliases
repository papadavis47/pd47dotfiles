#These are some new aliases I am going to work with in bash. These are my own. 
alias c='clear'
alias e='exit'
alias v='vim'
alias projects='cd ~/Github_Projects/'
alias myapp='cd ~/Github_Projects/PAPA'
alias ..='cd ../'
alias ...='cd ../../'
alias downloads='cd ~/Downloads'
alias hello='echo "Hello World!"'
alias upgrade='sudo apt update && sudo apt upgrade'
alias jup='jupyter notebook'
alias iceweasel='firefox&'
#alias python='/usr/bin/python3'
alias psql="sudo -u postgres psql"
alias pgserver="sudo -u postgres service postgresql start"
alias md="mkdir"
alias ci="code-insiders ."
alias vimrc="vim ~/.vimrc"
alias clock="tty-clock -cs -C 1 -S"
alias hackme="sudo openvpn ~/tryhackme/papadavis47.ovpn"
alias sqlitestudio="/opt/SQLiteStudio/sqlitestudio&"
alias psource="source .env/bin/activate"
alias deact="deactivate"
# The following are Django shortcuts

alias drunserver="python manage.py runserver"
alias dshell="python manage.py shell"

# Experimental Stuff
alias open="xdg-open $1"
