# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Options I care about
shopt -s nocaseglob
set -o notify # Immediately notify of job termination

# History tweaking
shopt -s histappend
export HISTIGNORE='[ \t]*:[fb]g:exit:ls*:ll*'
export HISTCONTROL="${HISTCONTROL}${HISTCONTROL+,}ignoredups"
export PROMPT_COMMAND="${PROMPT_COMMAND}${PROMPT_COMMAND+;}history -a"

# Completions
[[ -f /etc/bash_completion ]] && . /etc/bash_completion

# Base16 Shell: https://github.com/chriskempson/base16-shell
# TODO: Make 'er a submodule, or quick way to clone if needed
BASE16_SHELL="$HOME/.dotfiles/base16-shell/scripts/base16-ocean.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Add our binaries to the path
export PATH=~/.dotfiles/bin:$PATH

# Source file(s) from ~/.dotfiles/source/
function src() {
    local file
    if [[ "$1" ]]; then
        source "$HOME/.dotfiles/sources/$1.sh"
    else
        for file in ~/.dotfiles/source/*; do
            source "$file"
        done
    fi
}

# Running 'dotfiles'? Well, we'll source everything afterwards.
function dotfiles() {
    ~/.dotfiles/bin/dotfiles "$@" && src
}

src

# If ~/.bashrc.local exists, source it
if [[ -e "$HOME/.bashrc.local" ]]; then
    source "$HOME/.bashrc.local"
fi
