# Generic aliases!
alias ls="ls -lha --color=auto"
#alias less="less -r"
#alias grep="grep --color"
alias find="find ${@} 2>/dev/null" # This stops find from flooding stderr for permission issues

# Do we have an identity file? Probably want to use it.
if [[ -e ~/.ssh/id_rsa ]]; then
    alias ssh="ssh -i ~/.ssh/id_rsa"
fi

# Directory listing
if [[ "$(type -P tree)" ]]; then
    alias ll='tree --dirsfirst -aLpughDFiC 1'
    alias lsd='ll -d'
else
    alias ll='ls -al'
    alias lsd='CLICOLOR_FORCE=1 ll | grep --color=never "^d"'
fi
