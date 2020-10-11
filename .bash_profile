source $HOME/.bash_prompt
source $HOME/.aliases

# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

# enable git auto-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# enable repeated typings
defaults write -g ApplePressAndHoldEnabled -bool false

export AWS_DEFAULT_PROFILE=qq

export PATH=$PATH:/Users/david.he/Library/Python/3.8/bin
export PIPENV_VENV_IN_PROJECT=1
