export ZDOTDIR=$HOME

# Set up go environment variables
export GOPATH=$HOME/Development/go
export PATH=$HOME/bin:$PATH:$GOPATH/bin
typeset -U PATH

if [ -f ~/.dotfiles/custom/aliases.zsh ]; then
    source ~/.dotfiles/custom/aliases.zsh
fi
