# neovim-config

Your senpai's neovim config

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

## Prerequisites

- neovim
- hack nerd font
- ripgrep
- fd
- prettier
- black
- isort
- flake8
- install language servers with `:LspInstallInfo` [jsonls, rust_analyzer, pyright, clangd, cssls, tsserver, html, tailwindcss]

### Neovim python support

```
pip install pynvim
```

### Neovim node support

```
npm i -g neovim
```

## Custom Keymaps

| Keyboard Shortcut                          | Function                                    |
| ------------------------------------------ | ------------------------------------------- |
| <kbd>ctrl</kbd> + <kbd>h</kbd>             | move between windows (left)                 |
| <kbd>ctrl</kbd> + <kbd>j</kbd>             | move between windows (down)                 |
| <kbd>ctrl</kbd> + <kbd>k</kbd>             | move between windows (up)                   |
| <kbd>ctrl</kbd> + <kbd>l</kbd>             | move between windows (right)                |
| <kbd>shift</kbd> + <kbd>s</kbd>            | replace command                             |
| <kbd>leader</kbd> + <kbd>s</kbd>           | no highlight                                |
| <kbd>leader</kbd> + <kbd>e</kbd>           | neovim tree                                 |
| <kbd>ctrl</kbd> + <kbd>up</kbd>            | resize window                               |
| <kbd>ctrl</kbd> + <kbd>down</kbd>          | resize window                               |
| <kbd>ctrl</kbd> + <kbd>left</kbd>          | resize window                               |
| <kbd>ctrl</kbd> + <kbd>right</kbd>         | resize window                               |
| <kbd>shift</kbd> + <kbd>l</kbd>            | move to next buffer                         |
| <kbd>shift</kbd> + <kbd>h</kbd>            | move to previous buffer                     |
| <kbd>></kbd>                               | indent (visual mode)                        |
| <kbd><</kbd>                               | unindent (visual mode)                      |
| <kbd>shift</kbd> + <kbd>j</kbd>            | move block of text down (visual mode)       |
| <kbd>shift</kbd> + <kbd>k</kbd>            | move block of text up (visual mode)         |
| <kbd>ctrl</kbd> + <kbd>e</kbd>             | close completion window                     |
| <kbd>ctrl</kbd> + <kbd>j</kbd>             | move down in completion window              |
| <kbd>ctrl</kbd> + <kbd>k</kbd>             | move up in completion window                |
| <kbd>ctrl</kbd> + <kbd>b</kbd>             | page up in completion window                |
| <kbd>ctrl</kbd> + <kbd>f</kbd>             | page down in completion window              |
| <kbd>tab</kbd>                             | move down in completion window              |
| <kbd>shift</kbd> + <kbd>tab</kbd>          | move up in completion window                |
| <kbd>ctrl</kbd> + <kbd>space</kbd>         | open completion window                      |
| <kbd>g</kbd> + <kbd>d</kbd>                | go to the definition                        |
| <kbd>shift</kbd> + <kbd>k</kbd>            | information (lsp)                           |
| <kbd>ctrl</kbd> + <kbd>k</kbd>             | signature help (lsp)                        |
| <kbd>g</kbd> + <kbd>r</kbd>                | find all references (across all files)      |
| <kbd>]</kbd> + <kbd>d</kbd>                | loop through all errors and warnings (down) |
| <kbd>[</kbd> + <kbd>d</kbd>                | loop through all errors and warnings (up)   |
| <kbd>g</kbd> + <kbd>l</kbd>                | show error (lsp)                            |
| <kbd>leader</kbd> + <kbd>q</kbd>           | show all errors in a file                   |
| <kbd>leader</kbd> + <kbd>f</kbd>           | find files                                  |
| <kbd>ctrl</kbd> + <kbd>t</kbd>             | live grep                                   |
| <kbd>ctrl</kbd> + <kbd>p</kbd>             | previous search (telescope)                 |
| <kbd>ctrl</kbd> + <kbd>n</kbd>             | next search (telescope)                     |
| <kbd>ctrl</kbd> + <kbd>j</kbd>             | move down (telescope)                       |
| <kbd>ctrl</kbd> + <kbd>k</kbd>             | move up (telescope)                         |
| <kbd>ctrl</kbd> + <kbd>c</kbd>             | close (telescope)                           |
| <kbd>ctrl</kbd> + <kbd>x</kbd>             | open horizontal (telescope)                 |
| <kbd>ctrl</kbd> + <kbd>v</kbd>             | open vertical (telescope)                   |
| <kbd>ctrl</kbd> + <kbd>t</kbd>             | open tab (telescope)                        |
| <kbd>ctrl</kbd> + <kbd>u</kbd>             | preview scroll up (telescope)               |
| <kbd>ctrl</kbd> + <kbd>d</kbd>             | preview scroll down (telescope)             |
| <kbd>ctrl</kbd> + <kbd>v</kbd>             | open vertical (telescope)                   |
| <kbd>ctrl</kbd> + <kbd>t</kbd>             | open tab (telescope)                        |
| <kbd>tab</kbd>                             | loop through all options (up) (telescope)   |
| <kbd>shift</kbd> + <kbd>tab</kbd>          | loop through all options (down) (telescope) |
| <kbd>j</kbd>                               | down (normal mode) (telescope)              |
| <kbd>k</kbd>                               | up (normal mode) (telescope)                |
| <kbd>G</kbd>                               | bottom (normal mode) (telescope)            |
| <kbd>gg</kbd>                              | top (normal mode) (telescope)               |
| <kbd>alt</kbd> + <kbd>e</kbd>              | autopair fastwrap (useful af)               |
| <kbd>g</kbd> + <kbd>c</kbd>                | comment one line                            |
| <kbd>g</kbd> + <kbd>c</kbd> + <kbd>c</kbd> | comment multiple line                       |
| <kbd>leader</kbd> + <kbd>c</kbd>           | line commit info (gitsigns)                 |
| <kbd>leader</kbd> + <kbd>g</kbd>           | preview hunk (changes made) (gitsigns)      |
| <kbd>a</kbd>                               | add file (neovim tree)                      |
| <kbd>r</kbd>                               | rename file (neovim tree)                   |
| <kbd>d</kbd>                               | delete file (neovim tree)                   |
| <kbd>v</kbd>                               | vertical split (neovim tree)                |
| <kbd>ctrl</kbd> + <kbd> \ </kbd>           | toggle terminal                             |
| <kbd>:lua \_NODE_TOGGLE()</kbd>            | node shell                                  |
| <kbd>:lua \_BTOP_TOGGLE()</kbd>            | btop                                        |
| <kbd>:lua \_PYTHON_TOGGLE()</kbd>          | python shell                                |
| <kbd>leader</kbd> + <kbd>.</kbd>           | compile and run python/node/c/c++/rust code |
| <kbd>leader</kbd> + <kbd>k</kbd>           | Cphelper - run tests                        |
