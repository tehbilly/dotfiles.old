# Options set via environment variables
export LESS=-XR

# SSH auto-completion based on entries in known_hosts.
#if [[ -e ~/.ssh/known_hosts ]]; then
#    complete -o default -W "$(cat ~/.ssh/known_hosts | sed 's/[, ].*//' | sort | uniq | grep -v '\[')" ssh scp sftp
#fi

# Set DISPLAY if we can
#if [ -n "SSH_CONNECTION" ]; then
#    export DISPLAY=${SSH_CONNECTION%% *}:0.0
#fi

# Set the terminal's title bar.
#function titlebar() {
#  echo -n $'\e]0;'"$*"$'\a'
#}

## Bash options!
# Case-insensitive globbing (pathname expansion)
shopt -s nocaseglob
# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
