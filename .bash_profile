export PATH=~/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/cuda/bin
export PATH="$HOME/scripts:$PATH"
# Moved these from my .bashrc file on December 21, 2020
export PATH="/opt:$PATH"
export PATH="$HOME/my_bash_scripts:$PATH"
export PATH="$HOME/pythonscripts:$PATH"
export PATH="$HOME/GitHub_Projects/py_tools:$PATH"





if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi



. "$HOME/.cargo/env"
