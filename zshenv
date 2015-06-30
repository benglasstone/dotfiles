export ZDOTDIR=$HOME

# Set up go environment variables
export GOPATH=$HOME/Development/go
export PATH=$PATH:$GOPATH/bin

if [ -f ~/.dotfiles/custom/aliases.zsh ]; then
    source ~/.dotfiles/custom/aliases.zsh
fi
