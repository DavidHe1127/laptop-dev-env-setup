- Basics
  - [Search](#search)
  - [Delete All Lines](#delete-all)
  - [Common Operations](#common-operations)
  - [Delete](#delete-related-operations)

# search
`/[SEARCH_STRING]` and press `Enter` to start searching. Press `N or n` to find previous or next match.

# delete-all
`:%d`
- `:` enters command mode
- `%` select all lines
- `d` delete

# delete-related operations
- `d$` delete from current cursor position to the line end
- `d^` delete from current cursor position backward to the first non-white-space character

# common-operations
- `u` undo
- `yy` yank(copy)
- `p` paste
- `dd` delete one line
- `cw` change word
- `:$` go to file end
- `gg` go to file start
- `b` move back one word
- `w` move forward one word
