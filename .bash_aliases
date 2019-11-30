# docker
alias docker-clean='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'

# directories
alias ll='LC_COLLATE=C ls -lhAF'
alias lll='ls -lhAF | less'
alias ls='LC_COLLATE=C ls --color=auto'

# system utilities
alias du="du -ach | sort -h"  # file size recursively
alias df="df -Tha --total"    # disk usage
alias grep='grep --color=auto'

# reverse chronological list of files/dirs (max depth 2) that contain change files. i.e. what have I worked on recently?
alias recents="find . -maxdepth 4 -mtime -90 -printf '%T+\t%s\t%p\n' 2>/dev/null | sort -r | cut -f 3 | cut -d'/' -f-3 | awk '!a[\$0]++'"

# python
alias pip='pip3'
alias mkenv='python3 -m venv env'
alias startenv='source env/bin/activate && which python3'
alias stopenv='deactivate'