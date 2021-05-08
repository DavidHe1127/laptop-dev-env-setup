# bootstrapping

This repo provides curated list of tools/configs for you to speed up bootstrapping on a brand new **MAC**

### Files below need to be copied over to home directory

- [vimrc](./.vimrc)
- [bash_profile](./.bash_profile)
- [bash_prompt](./.bash_prompt)
- [gitconfig](./.gitconfig)
- [bashrc](./.bashrc)
- [aliases](./.aliases)

### How to sync sublime text config

To sync configs/pkgs onto a fresh sublime:

1. Install `Package Control`
2. Install `ayu` from `Package Control`
3. Remove `User` folder under `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User`
4. Clone the entire `User` folder from source Mac
5. Restart your fresh sublime text

### Git auto-completion

Follow [instructions 1 and 2](https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion). Step 3 is in the `~/.bash_profile` provided.

### Docker auto-completion

```shell
cd /usr/local/etc/bash_completion.d
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion
```

### Other tooling tips/configs

- [hyper](./hyper)
- [Silver Searcher](https://github.com/ggreer/the_silver_searcher)
- [Spectacles](https://www.spectacleapp.com/)
- [Prettier](https://prettier.io/docs/en/install.html)
- [Monosnap](https://monosnap.com/welcome)
- [Naomi st3 code highlighting](https://packagecontrol.io/packages/Naomi)
- [quicklook plugin](https://github.com/sindresorhus/quick-look-plugins)
- [Homebrew and pkgs](https://brew.sh/)
  - watch
  - tree

### [Sublime Personalisation](sublime/README.md)
