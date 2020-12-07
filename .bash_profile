export PATH=~/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/cuda/bin

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# The following is a line I put in when I was working with Ruby.

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# This is a copy of my .bash_profile - made on 2020-12-06. 
# I could not symlink it - because shell would not work with the extra symlink
