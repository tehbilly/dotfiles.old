#!/bin/bash

# Colors for the prompt
# 256 color code (replace ### with color code): \[\033[38;5;###m\]
_pbg="\033[38;5;240m"
_pfg="\033[38;5;248m"

function _prmpt_pwd() {
    if [ -w $PWD ]; then
        echo -e "\e[0;32m"
    else
        echo -e "\e[0;31m"
    fi
}

function _prmpt_load() {
    if [[ "$(type -P uptime)" ]]; then
        uptime=$( uptime | sed 's/.*: //' | sed 's/,//g' )
        echo -e "-[${_pfg}${uptime}${_pbg}]"
    fi
}


# Export the actual prompt
export PS1="${_pbg}[${_pfg}\u@\h${_pbg}]\$(_prmpt_load)-[\$(_prmpt_pwd)\w${_pbg}]
${_pbg}[${_pfg}\t${_pbg}]-[${_pfg}\!${_pbg}]>>\033[0m "
