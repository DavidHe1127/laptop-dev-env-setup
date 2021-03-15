## Sublime Setup

### Open contents in Sublime from terminal

```shell
sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/
```
Then open your projet `subl .`

### Sublime builds

Build path `OS X: ~/Library/Application Support/Sublime Text 3/Packages/User`

- [Python](./py3.sublime-build)

### Sidebar Selected item color
Procedure below is based on OS X.

1. Find your color theme name
2. Go to `/Users/P782199/Library/Application Support/Sublime Text 3/Packages/User`
3. Find `<THEME>.sublime-theme` i.e `ayu-mirage.sublime-theme`
4. Change color to your favour
```json
  {
    "class": "sidebar_label",
    "parents": [{"class": "tree_row","attributes": ["selected"]}],
    "color": [178, 255, 102] // pear green!
  }
```

### Inactive selection background color
In `ayu-mirage.sublime-color-theme`, find and change to the line below:
```json
"inactive_selection": "#5D6D7E",
```

### Remove all whitesapces
Comment this flag out in `Preferences.sublime-settings` to disable whitespaces drawn to show indentations. Turn it off when coding in indentation-based language such as `Python`.
```json
// "draw_white_space": "all",
```

Also find and change `guide` in color scheme of selected theme to the desired color for indentation guide line. See below.

### Change color theme

Use [PackageResourceViewer](https://github.com/skuroda/PackageResourceViewer) to choose a color theme you are going to modify. i.e open and modify`ayu-mirage.sublime-color-scheme`.

---

### Python Dev Setup

#### Code Formatting

Use [PyYapf - code formatting tool](https://packagecontrol.io/packages/PyYapf%20Python%20Formatter). Note, you need to specify `yapf` binery location in `yapf_command` in PyYapf User Settings. i.e.

```json
"yapf_command": "/usr/local/bin/yapf"
```

#### Use remarkable active guide
Open your theme color file through `PackagerResourceViewer`. i.e `ayu-mirage.sublime-color-scheme` file.
```
"active_guide": "#F7FE2E",
```
You also need to ensure relevant flags are turned on in user preference file.
```json
"indent_guide_options":[
  "draw_normal",
  "draw_active"
],
```

#### Sublime linter Config example

User settings
```json
{
    "debug": true,
    "linters": {
        "eslint": {
            "disable": false,
            "selector": "source.ts, source.js - meta.attribute-with-value",
            "args": ["--config", "${folder}/.eslintrc.js"],
            "env": {
                "PATH": "/usr/local/bin"
            }
        },
        "terraform": {
            "disable": false,
            "args": [],
            "executable": "/usr/local/bin/terraform",
            "excludes": []
        }
    },
    "paths": {
        "osx": ["/usr/local/bin/node"]
    }
}
```
