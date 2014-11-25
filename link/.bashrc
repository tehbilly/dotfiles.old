# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

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
