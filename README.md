# My Dotfiles

My dotfiles. The neovim configuration is based on that of [Fireond](https://github.com/Fireond/dotfiles).

## Something Else to Have Done

### On M3 Macbook Air

#### `markdown-preview.nvim` doesn't work out of the box

The solution is to `cd` into `~/.local/share/nvim/lazy/markdown-preview.nvim/` and run `npm install`.

## My `tmux` Config

The prefix key is `<c-b>` (in vim notation). \
`<n>` represents a number key from (0 to 9). \
`<arrow>` represents an arrow key. \
`<CR>` represents the enter key.

| Effect                                    | Key               | Description                                                          |
| ----------------------------------------- | ----------------- | -------------------------------------------------------------------- |
| create a new window                       | `<prefix>c`       |                                                                      |
| switch between windows                    | `<prefix><n>`     | switch to window `n`                                                 |
| switch to the next window                 | `<prefix>n`       |                                                                      |
| switch to the previous window             | `<prefix>p`       |                                                                      |
| close a window                            | `<prefix>&`       |                                                                      |
| split the current pane vertically         | `<prefix>%`       | "vertically" means that the new pane is to the right of the old pane |
| split the current pane horizontally       | `<prefix>"`       | "horizontally" means that the new pane is under the old pane         |
| navigate through panes                    | `<prefix><arrow>` |                                                                      |
| swap the current pane with the left pane  | `<prefix>{`       |                                                                      |
| swap the current pane with the right pane | `<prefix>}`       |                                                                      |
| show pane numbers                         | `<prefix>q`       | select a pane by pressing the corresponding `<n>`                    |
| zoom-in into a pane                       | `<prefix>z`       |                                                                      |
| turn a pane into a window                 | `<prefix>!`       |                                                                      |
| close a pane                              | `<prefix>x`       |                                                                      |
| list active sessions                      | `<prefix>s`       |                                                                      |
| preview windows for each session          | `<prefix>w`       | attach to the selected session by pressing `<CR>`                    |
