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
alias iceweasel='firefox&'
alias psql="sudo -u postgres psql"
alias pgserver="sudo -u postgres service postgresql start"
alias md="mkdir $1"
alias codei="code-insiders $1"
alias vimrc="vim ~/.vimrc"
alias neolua="nvim ~/.config/nvim/init.lua"
alias bashrc="nvim ~/.bashrc"
alias newalias="nvim ~/.bash_aliases"
alias saremove="sudo apt autoremove"
alias bsource="source ~/.bashrc"
alias clock="tty-clock -cs -C 1 -S"
alias hackme="sudo openvpn ~/tryhackme/papadavis47.ovpn"
alias sqlitestudio="/opt/SQLiteStudio/sqlitestudio&"
alias t="tree"
alias notes="cd ~/ObsidianVaults"
alias vs="code ."
alias nv="nvim"

# Navigation
alias journal="cd ~/newJournal2023"


# The following shortcut was made before I learned how to configure new-component properly
# For 'new-component'
alias coolcomp="new-component --dir components $1"

# For NextJS/Tailwind Starter
alias twnext="yarn create next-app -e https://github.com/papadavis47/my-tailwind-nextjs-starter $1"

# For backup
alias bkupcode="cp -i ~/.config/Code/User/keybindings.json ~/.config/Code/User/settings.json ~/pd47dotfiles/vscode/"
alias bkupprofile="cp -i ~/.bash_profile ~/pd47dotfiles/"

# yarn
alias yd="yarn dev"

# Git aliases
alias gst="git status"
alias ga="git add ."
alias gl="git log"
alias gcm="git commit -m $1"
alias gitp="git push"

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
alias python='/usr/bin/python3'
alias pip='/usr/bin/pip3'
alias newenv="python3 -m venv ./venv"
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

# Node & React
alias cra="npm run start"
