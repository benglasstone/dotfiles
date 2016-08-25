# This file includes several customization points:
# - To replace what bundles are loaded with antigen, customize:
#     ~/.dotfiles/custom/antigen_setup.zsh
# - To change the theme, set it in
#     ~/.dotfiles/custom/theme.zsh
# - To add aliases
# - To do anything else "site-specific" in the zshrc, customize:
#     ~/.dotfiles/custom/zshrcustom.zsh
source ~/.dotfiles/antigen/antigen.zsh

# Customization point for setting up antigen
if [ -f ~/.dotfiles/custom/antigen_setup.zsh ]; then
    source ~/.dotfiles/custom/antigen_setup.zsh
else
    # Load the oh-my-zsh library
    antigen use oh-my-zsh
    # Bundles from the default repo
    antigen bundle git
    antigen bundle git-flow
fi

# Theme customization point
if [ -f ~/.dofiles/custom/theme.zsh ]; then
    source ~/.dotfiles/custom/theme.zsh
else
    # My fav as the default ;)
    antigen theme af-magic
fi

# Tell antigen that you're done
antigen apply

# This is meant to guard against nuking TERM if it's set by screen or tmux
if [[ $TERM == xterm ]]; then
    # 21st century terminals
    export TERM="xterm-256color"
fi

# Stuff gets weird with the path sometimes
# Load it here in addition to .zprofile
if [ -f ~/.dotfiles/custom/path.zsh ]; then
    source ~/.dotfiles/custom/path.zsh
fi

typeset -U PATH

# Generic customization point for zshrc
if [ -f ~/.dotfiles/custom/zshrcustom.zsh ]; then
    source ~/.dotfiles/custom/zshrcustom.zsh
fi

export SOURCED_ZSHRC="YES"
