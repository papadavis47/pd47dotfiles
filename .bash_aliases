#These are some new aliases I am going to work with in bash. These are my own. 
alias bclean='sudo apt autoremove'
alias c='clear'
alias e='exit'
alias v='vim'
alias projects='cd ~/priority-projects/'
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
alias neolua="nvim ~/.config/nvim/"
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

# pnpm
alias pn=pnpm

# Tauri
alias ytd="yarn tauri dev"

# Bun
alias bd="bun dev"

# pnpm
alias pd="pnpm dev"

# yarn
alias yd="yarn dev"

# For backup
alias bkupcode="cp -i ~/.config/Code/User/keybindings.json ~/.config/Code/User/settings.json ~/pd47dotfiles/vscode/"
alias bkupprofile="cp -i ~/.bash_profile ~/pd47dotfiles/"


# Git aliases
alias gst="git status"
alias ga="git add ."
alias gl="git log"
alias gcm="git commit -m $1"
alias gitp="git push"


# Tmux Aliases
alias tmuxn="tmux new-ses -s $1"

# Personal Folder Navigation
alias dotfiles="cd ~/pd47dotfiles; ls -la"

# Script Helpers
alias execute="chmod +x $1"

# Rust version of cat
alias cat="batcat"

