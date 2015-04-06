source ~/.dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh library
antigen use oh-my-zsh
# Bundles from the default repo
antigen bundle git
antigen bundle git-flow
# Load the theme
antigen theme amuse
# Tell antigen that you're done
antigen apply

# 21st century terminals
export TERM="xterm-256color"

# vim because most of my time is spent editing, not writing.
export EDITOR='vim'

# customized bindings
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Aliases and Functions

# Sometimes you want to see *everything*
alias glga="git log --graph --all"

# Make tux give fortunes
alias tux-say='fortune -a -e | cowsay -f tux'

# Exuberant ctags with tags for function declarations and definitions in C
alias exutags='ctags-exuberant --c-kinds=+p --recurse'

# GNU ARM Toolchain GDB alias
alias armgdb='arm-none-eabi-gdb -iex "add-auto-load-safe-path .gdbinit"'

# Get a fortune from tux when this file is sourced
tux-say

# Shortcut for colormake
function cake() {
    if [ "$1" = "debug" ]; then
        shift;
        colormake "$@" && make debug "$@";
    elif [ "$1" = "nuke" ]; then
        colormake distclean && colormake annihilate-submodules;
    else colormake "$@";
    fi
}
