## Sublime Setup

### Open contents in Sublime from terminal

```shell
sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/
```
Then open your projet `subl .`

### Sublime builds

Build path `OS X: ~/Library/Application Support/Sublime Text 3/Packages/User`

- [Python](./py3.sublime-build)

---

### Python Dev Setup

#### Code Formatting

Use [PyYapf - code formatting tool](https://packagecontrol.io/packages/PyYapf%20Python%20Formatter). Note, you need to specify `yapf` binery location in `yapf_command` in PyYapf User Settings. i.e.

```json
"yapf_command": "/usr/local/bin/yapf"
```
