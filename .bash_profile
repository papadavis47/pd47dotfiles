export PATH=~/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/cuda/bin
export PATH="$HOME/scripts:$PATH"
# Moved these from my .bashrc file on December 21, 2020
export PATH="/opt:$PATH"
export PATH="$HOME/my_bash_scripts:$PATH"

# The following is for Lua
export PATH="$HOME/.luarocks/bin:$PATH"

# The following is for Go  
# export GOROOT=/usr/local/go
# export GOPATH=$HOME/go
# export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

export PATH=$PATH:/usr/local/go/bin


. "$HOME/.cargo/env"


if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi



