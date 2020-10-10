# load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
source /Users/david.he/.bash_prompt
source /Users/david.he/.aliases

# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

defaults write -g ApplePressAndHoldEnabled -bool false

export AWS_DEFAULT_PROFILE=qq

export PATH=$PATH:/Users/david.he/Library/Python/3.8/bin
export PIPENV_VENV_IN_PROJECT=1
