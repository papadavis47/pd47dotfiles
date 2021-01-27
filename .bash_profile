export PATH=~/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/cuda/bin
export PATH="$HOME/scripts:$PATH"
# Moved these from my .bashrc file on December 21, 2020
export DENO_INSTALL="/home/papadavis47/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/opt:$PATH"
export PATH="$HOME/my_bash_scripts:$PATH"
export PATH="$HOME/pythonscripts:$PATH"
export PATH="$HOME/GitHub_Projects/py_tools:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"




if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# The following is a line I put in when I was working with Ruby.

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

