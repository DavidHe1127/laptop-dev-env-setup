# Dev-ready Laptop Setup Guide

It contains configs you need to get your macbook ready for development work.

## Toolings/CLIs

### Git auto-completion

Follow [instructions 1 and 2](https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion). Step 3 is in the `~/.bash_profile` provided.

- [Hyper](https://hyper.is/)
- [Rectangle](https://rectangleapp.com/) 
- [Prettier](https://prettier.io/docs/en/install.html)
- [Monosnap](https://monosnap.com/welcome)
- [Naomi st3 code highlighting](https://packagecontrol.io/packages/Naomi)
- [quicklook plugin](https://github.com/sindresorhus/quick-look-plugins)
- [Homebrew](https://brew.sh/) (Check their plugins)
- [oh-my-zsh](https://ohmyz.sh/)

```mermaid
flowchart LR
  A --> B
```

### Docker auto-completion

```shell
cd /usr/local/etc/bash_completion.d
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion
```

## [Sublime Text](./sublime)

## [VSCode](./vscode)

## [K8S](./k8s)

## Non-essential tools

- [Block Chrome ads](https://github.com/ApoorvGit/ad-blocker-chrome-extension)

## macOS

### Key repetition

First, run `defaults write -g ApplePressAndHoldEnabled -bool false` then, in the Keyboard settings, Change `Key repeat rate` to `fastest` and `Delay until repeat` to `shortest`.

