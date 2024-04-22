# Dev-ready Laptop Setup Guide

It contains configs you need to get your macbook ready for development work.

## Toolings/CLIs

### Git auto-completion

Follow [instructions 1 and 2](https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion). Step 3 is in the `~/.bash_profile` provided.

- [hyper](./hyper)
- [Silver Searcher](https://github.com/ggreer/the_silver_searcher)
- [Rectangle](https://rectangleapp.com/) 
- [Prettier](https://prettier.io/docs/en/install.html)
- [Monosnap](https://monosnap.com/welcome)
- [Naomi st3 code highlighting](https://packagecontrol.io/packages/Naomi)
- [quicklook plugin](https://github.com/sindresorhus/quick-look-plugins)
- [Homebrew and pkgs](https://brew.sh/)
  - watch
  - tree

### Docker auto-completion

```shell
cd /usr/local/etc/bash_completion.d
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion
```

## [Sublime Text](./sublime)

## [VSCode](./vscode)

## K8S

## Config files

Below are a number of files that need to be copied to your home directory.

- [vimrc](./.vimrc)
- [bash_profile](./.bash_profile)
- [bash_prompt](./.bash_prompt)
- [gitconfig](./.gitconfig)
- [bashrc](./.bashrc)
- [aliases](./.aliases)
