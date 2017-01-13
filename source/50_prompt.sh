#!/bin/bash

if [ -z "$PS1" ]; then
  return
fi

# Colors for the prompt
# 256 color code (replace ### with color code): \[\033[38;5;###m\]
_pbg="$(tput setaf 240)"
_pfg="$(tput setaf 248)"

#function _prmpt_pwd() {
#    if [ -w $PWD ]; then
#        echo -e "\e[0;32m"
#    else
#        echo -e "\e[0;31m"
#    fi
#}

# Export the actual prompt
export PS1="\[${_pbg}\][\[${_pfg}\]\u@\H\[${_pbg}\]]-[\[${_pfg}\]\w\[${_pbg}\]]\n\[${_pbg}\][\[${_pfg}\]\t\[${_pbg}\]]-[\[${_pfg}\]\!\[${_pbg}\]]>>$(tput sgr0) "
