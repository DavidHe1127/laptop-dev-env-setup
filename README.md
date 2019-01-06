# bootstrapping

### Files below need to be copied over to home directory
  * [vimrc](./.vimrc)
  * [bash_profile](./.bash_profile)
  * [bash_prompt](./.bash_prompt)
  * [gitconfig](./.gitconfig)

### How to sync sublime text config
To sync configs/pkgs onto a fresh sublime:
 1. Install `Package Control`
 2. Install `ayu` from `Package Control`
 2. Remove `User` folder under `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User`
 3. Clone the entire `User` folder from source Mac
 4. Restart your fresh sublime text

### Git auto-completion
[Download bash script](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash). 
Copy this file to your home directory, and add this to your .bashrc file: `source ~/git-completion.bash`.
  

