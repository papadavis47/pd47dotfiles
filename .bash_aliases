#These are some new aliases I am going to work with in bash. These are my own. 
alias c='clear'
alias e='exit'
alias v='vim'
alias projects='cd ~/priority-projects/'
alias myapp='cd ~/Github_Projects/PAPA'
alias ..='cd ../'
alias ...='cd ../../'
alias downloads='cd ~/Downloads'
alias hello='echo "Hello World!"'
alias upgrade='sudo apt update && sudo apt upgrade'
alias jup='jupyter notebook'
alias iceweasel='firefox&'
alias python3='/usr/bin/python3'
alias pip3='/usr/bin/pip3'
alias psql="sudo -u postgres psql"
alias pgserver="sudo -u postgres service postgresql start"
alias md="mkdir $1"
alias codei="code-insiders $1"
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias newalias="vim ~/.bash_aliases"
alias bsource="source ~/.bashrc"
alias clock="tty-clock -cs -C 1 -S"
alias hackme="sudo openvpn ~/tryhackme/papadavis47.ovpn"
alias sqlitestudio="/opt/SQLiteStudio/sqlitestudio&"
alias t="tree"

# The following are Django shortcuts
alias dserv="python manage.py runserver"
alias dshell="python manage.py shell"
alias dproject="django-admin startproject project"

# Experimental Stuff
alias open="xdg-open $1"
alias practice="ipython -i --no-banner $1"

# Tmux Aliases
alias tmuxn="tmux new-ses -s $1"

# Python Aliases
alias newenv="python -m venv ./venv"
alias psource="source ./venv/bin/activate"
alias deact="deactivate"

# Personal Folder Navigation
alias mission="cd ~/MissionPossible; ls"
alias dotfiles="cd ~/pd47dotfiles; ls -la"

# Script Helpers
alias execute="chmod +x $1"
alias paths="echo $PATH | tr \: \\n"

# Gatsby
alias gd="gatsby develop"

# Rust version of cat
alias bat="batcat"
