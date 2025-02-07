# ensure oh-my-zsh is installed
export PATH=$PATH:/opt/homebrew/bin

export ZSH="$HOME/.oh-my-zsh"

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export TERM=xterm-color
export BASH_SILENCE_DEPRECATION_WARNING=1

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

source $(brew --prefix nvm)/nvm.sh

export ZSH_THEME="amuse"

# add $(aws_prompt_info) to your PROMPT env var in the selected theme
plugins=(git sublime aws)

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

# List all files colorized in long format
alias ll='ls -lh'

# List all files colorized in long format, including dot files
alias la="ls -lha"

# List only directories
alias lsd='ls -l | grep "^d"'

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Show and hide hidden files
alias showfile='defaults write com.apple.finder AppleShowAllFiles YES;
killall Finder /System/Library/CoreServices/Finder.app'

alias hidefile='defaults write com.apple.finder AppleShowAllFiles NO;
killall Finder /System/Library/CoreServices/Finder.app'

# show my ip addr
alias myip='ifconfig | grep "inet " | grep -v 127.0.0.1'

# page through commands history
alias history='history | less'

# docker remove dangling images
alias rmdimgs='docker rmi -f $(docker images -f "dangling=true" -q)'

alias python=python3

source $ZSH/oh-my-zsh.sh

# AWS SSO
export AWS_DEFAULT_SSO_START_URL=https://d-97670afab1.awsapps.com/start
export AWS_DEFAULT_SSO_REGION=ap-southeast-2

# aws-sso cli auto-complete
autoload -Uz +X compinit && compinit
autoload -Uz +X bashcompinit && bashcompinit

source ~/.config/aws-sso/.aws-sso-helpers
