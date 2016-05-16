export ZDOTDIR=$HOME

# Customization point for environment variables
if [ -f ~/.dotfiles/custom/environment.zsh ]; then
    source ~/.dotfiles/custom/environment.zsh
fi

# I load aliases in .zshenv because I want them to be available to me
# in vim.  That is, I like being able to type `:!my_alias` and have it
# work when I'm editing with vim.  The other solutions were
# unsatisfactory.  I mostly use emacs now, but this is useful when
# vimmin' it.
#
# Set your aliases there.
if [ -f ~/.dotfiles/custom/aliases.zsh ]; then
    source ~/.dotfiles/custom/aliases.zsh
fi

export SOURCED_ZSHENV="YES"
