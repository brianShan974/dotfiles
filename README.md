# My Dotfiles

My dotfiles.

## Something Else to Have Done

### On M3 Macbook Air

#### `markdown-preview.nvim` doesn't work out of the box

The solution is to `cd` into `~/.local/share/nvim/lazy/markdown-preview.nvim/` and run `npm install`.

## My `tmux` Configurations

Adapted from the `tmux` config of [Dreams of Code](https://www.youtube.com/@dreamsofcode)

- [github repo](https://github.com/dreamsofcode-io/tmux)
- [youtube video](https://www.youtube.com/watch?v=DzNmUNvnB04)

### Keybindings

- The prefix key is `<c-space>` (in `vim` key notations).
- `<n>` represents a number key from (0 to 9).
- `<nav>` represents an arrow key or vim navigation keys (`h`, `j`, `k` or `l`).
- `<CR>` represents the enter key.
- Vim key notations are used.

| Effect                                    | Key                    | Description                                                                                                                 |
| ----------------------------------------- | ---------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| create a new window                       | `<prefix>c`            |                                                                                                                             |
| switch between windows                    | `<prefix><n>`          | switch to window `n`                                                                                                        |
| switch to the next window                 | `<prefix>n` or `<a-L>` |                                                                                                                             |
| switch to the previous window             | `<prefix>p` or `<a-H>` |                                                                                                                             |
| close a window                            | `<prefix>&`            |                                                                                                                             |
| split the current pane vertically         | `<prefix>%`            | "vertically" means that the new pane is to the right of the old pane; new panes will start in the current directory as well |
| split the current pane horizontally       | `<prefix>"`            | "horizontally" means that the new pane is under the old pane; new panes will start in the current directory as well         |
| navigate through panes                    | `<prefix><nav>`        |                                                                                                                             |
| swap the current pane with the left pane  | `<prefix>{`            |                                                                                                                             |
| swap the current pane with the right pane | `<prefix>}`            |                                                                                                                             |
| show pane numbers                         | `<prefix>q`            | select a pane by pressing the corresponding `<n>`                                                                           |
| zoom-in into a pane                       | `<prefix>z`            |                                                                                                                             |
| turn a pane into a window                 | `<prefix>!`            |                                                                                                                             |
| close a pane                              | `<prefix>x`            |                                                                                                                             |
| list active sessions                      | `<prefix>s`            |                                                                                                                             |
| preview windows for each session          | `<prefix>w`            | attach to the selected session by pressing `<CR>`                                                                           |
| install plugins                           | `<prefix>I`            |                                                                                                                             |
| enter copy mode                           | `<prefix>[`            | `<c-v>` is used to toggle visual block mode in visual mode, instead of directly entering visual block mode                  |

### Theme

[catppuccin-tmux](https://github.com/catppuccin/tmux) is used as my tmux theme.

### Other Options

- new panes will start up in the same directory as the old pane
- mouse support is enabled
- window and pane numbering start from 1 instead of 0

## My `fish` Configurations

### Aliases

The aliases can be read from [`config.fish`](fish/.config/fish/config.fish), and some of them are highly personal.
Therefore, detailed explanation won't be given here.

### `omf` Plugins

Here is a list of plugins installed with `omf`:

## My `latex_neovim` Configurations

The `neovim` configuration shown in this repo (`latex_neovim`) is based on that of [Fireond](https://github.com/Fireond/dotfiles).
This config is slightly tuned for writing $\LaTeX$ documents, and is not guaranteed to work on your machine (in fact, it doesn't even work perfectly on my machine).
Therefore, using this config is not recommended.
A more detailed explanation of this config can be found [here](https://space.bilibili.com/171766861/channel/series) in his Bilibili channel.

## My [`AstroNvim`](https://astronvim.com/) Configurations

Please refer to [my config](https://github.com/brianShan974/astronvim4-config) where the documentation is not complete.
