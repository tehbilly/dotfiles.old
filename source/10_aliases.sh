# Generic aliases!
alias ls="ls -lha --color=auto"
alias grep="grep --color"
alias find="find ${@} 2>/dev/null" # This stops find from flooding stderr for permission issues

# Docker aliases
alias docker-clean="docker rmi \$(docker images | awk '{if (\$2 == \"<none>\") print \$3;}')"

# Aria2 aliases
if [[ "$(type -P aria2c)" ]]; then
    alias get='aria2c'
fi

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
