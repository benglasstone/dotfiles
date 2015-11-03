source ~/.dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh library
antigen use oh-my-zsh
# Bundles from the default repo
antigen bundle git
antigen bundle git-flow

# Load the theme
antigen theme af-magic

# Tell antigen that you're done
antigen apply

# This is meant to guard against nuking TERM if it's set by screen or tmux
if [[ $TERM == xterm ]]; then
    # 21st century terminals
    export TERM="xterm-256color"
fi

if [ -f ~/.dotfiles/custom/environment ]; then
    source ~/.dotfiles/custom/environment
fi

if [ -f ~/.dotfiles/custom/zshrc_custom ]; then
    source ~/.dotfiles/custom/zshrc_custom
fi
