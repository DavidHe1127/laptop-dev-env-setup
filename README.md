# bootstrapping
This repo provides curated list of tools/configs for you to speed up bootstrapping on a brand new **MAC**

### Files below need to be copied over to home directory
  * [vimrc](./.vimrc)
  * [bash_profile](./.bash_profile)
  * [bash_prompt](./.bash_prompt)
  * [gitconfig](./.gitconfig)
  * [aliases](./.aliases)

### How to sync sublime text config
To sync configs/pkgs onto a fresh sublime:
 1. Install `Package Control`
 2. Install `ayu` from `Package Control`
 2. Remove `User` folder under `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User`
 3. Clone the entire `User` folder from source Mac
 4. Restart your fresh sublime text

### Git auto-completion
Download [bash script](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash). 
Copy this file to your home directory, and add this to your `.bashrc` file: `source ~/git-completion.bash`.

### Sublime from terminal
```
sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/
```
Then open your projet `subl .`
  
### Other tooling tips/configs
* [hyper](./hyper)
* [Silver Searcher](https://github.com/ggreer/the_silver_searcher)
* [Spectacles](https://www.spectacleapp.com/)
* [Monosnap](https://monosnap.com/welcome)
* [Naomi st3 code highlighting](https://packagecontrol.io/packages/Naomi)
* [quicklook plugin](https://github.com/sindresorhus/quick-look-plugins)
* [Homebrew and pkgs](https://brew.sh/)
  - watch
  - tree

### [Sublime Personalisation](./sublime_tweeks.md)

### Sublime builds

Build path `OS X: ~/Library/Application Support/Sublime Text 3/Packages/User`

- [Python](./py3.sublime-build)

---

## Python Dev Setup

### Code Formatting

Use [PyYapf - code formatting tool](https://packagecontrol.io/packages/PyYapf%20Python%20Formatter). Note, you need to specify `yapf` binery location in `yapf_command` in PyYapf User Settings. i.e.

```json
"yapf_command": "/usr/local/bin/yapf"
```





