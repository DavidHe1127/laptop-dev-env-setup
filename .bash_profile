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

# bash completion
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
source <(kubectl completion bash)

# https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-prompting.html#cli-usage-auto-prompt-configure
export AWS_CLI_AUTO_PROMPT=on
