# We're supposed to be setting environment variables in ~/.zshenv, but
# on Arch, /etc/zshenv sources `/etc/profile` which blows away
# $PATH.  So we allow it to be loaded here.

# Customization point for PATH
if [ -f ~/.dotfiles/custom/path.zsh ]; then
    source ~/.dotfiles/custom/path.zsh
fi

# Clean up PATH
typeset -U PATH

if [ -f ~/.dotfiles/custom/zprofilecustom.zsh ]; then
    source ~/.dotfiles/custom/zprofilecustom.zsh
fi

# For debugging
export SOURCED_ZPROFILE="YES"
