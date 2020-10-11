## Sublime Overwrites

- [Change title color of selected item on sidebar](#selected-item-color)
- [Remove all whitespaces](#remove-all-whitespaces)
- [Change color scheme of selected theme package](#change-color-theme)
- [Key bindings](./sublime_key_bindings.json)
- [Settings](./sublime_settings.json)

### Selected item color
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

### Remove all whitesapces
Comment this flag out in `Preferences.sublime-settings` to disable whitespaces drawn to show indentations. Turn it off when coding in indentation-based language such as `Python`.
```json
// "draw_white_space": "all",
```

Also find and change `guide` in color scheme of selected theme to the desired color for indentation guide line. See below.

### Change color theme

Use [PackageResourceViewer](https://github.com/skuroda/PackageResourceViewer) to choose a color theme you are going to modify. i.e open and modify`ayu-mirage.sublime-color-scheme`.





