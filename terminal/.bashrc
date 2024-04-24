parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\[\033[0;37m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\[\033[1;32m\]\$(parse_git_branch)\\n\[\[\e[31;1m\]\\$\[\e[m\] "

 export NVM_DIR="$HOME/.nvm"
 [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
 [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# show timestamp in prompt
export PROMPT_COMMAND="echo -n \[\$(date +%H:%M:%S)\]\ "
