Sublime tweeks

- [Change title color of selected item on sidebar](#selected-item-color)


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
    "color": [102, 115, 128] // pear green!
  }
```
