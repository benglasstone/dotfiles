source ~/.dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh library
antigen use oh-my-zsh

# Bundles from the default repo
antigen bundle git
antigen bundle git-flow

# Load the theme
antigen theme agnoster

# Tell antigen that you're done
antigen apply

# DEFAULT_USER=josaphat
export TERM="xterm-256color"
export EDITOR='vim'

# customized bindings
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Aliases and Functions
alias glga="git log --graph --all"
alias tux-say='fortune -a -e | cowsay -f tux'
alias exutags='ctags-exuberant --c-kinds=+p --recurse'
alias vpn='/opt/cisco/anyconnect/bin/vpn'
alias armgdb='arm-none-eabi-gdb -iex "add-auto-load-safe-path .gdbinit"'

# Get a nice fortune every time this script loads
tux-say

function cake() {
    if [ "$1" = "debug" ]; then
        shift;
        colormake "$@" && make debug "$@";
    elif [ "$1" = "nuke" ]; then
        colormake distclean && colormake annihilate-submodules;
    else colormake "$@";
    fi
}

PATH=~/Applications/arm-none-eabi/bin:${PATH}
