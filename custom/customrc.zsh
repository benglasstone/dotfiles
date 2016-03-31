# vim because most of my time is spent editing, not writing.
export EDITOR='vim'

# customized bindings
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Get a fortune from tux when this file is sourced
# tux-say
# fortune -a -e

if [ -n "$TMUX" ]; then
    DISABLE_AUTO_TITLE="true"
fi