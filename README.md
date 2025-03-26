# My Dotfiles

My dotfiles for Unix-like operating systems.
Definitely works on macOS.
May (probably definitely does) work on linux.
Basically unusable on Windows.

## Installation

### Dependencies

Please install `git` before using these dotfiles and installing other dependencies.
Since you are here,
you have probably already installed [`git`](https://git-scm.com/).

Please install [`gnu-stow`](https://www.gnu.org/software/stow/) using your favorite package manager.

### Managing Dotfiles

I am going to assume that your `XDG_CONFIG_HOME` is set to `~/.config`.
If you don't know what this is,
my assumption is probably going to hold true.

First,
clone this repo under `~`
(or the parent directory of `XDG_CONFIG_HOME`)
and
(I personally like to)
name this directory `.dotfiles`.
You may want to run this command:

```
git clone https://github.com/brianShan974/dotfiles.git ~/.dotfiles
```

Then you can `cd` into this directory,
and look for the configurations for anything you may want.

#### Installing Configurations

If you see the configurations you need,
for example, if you need my [`ruff`](https://github.com/astral-sh/ruff) config,
you can install the configuration like this:

```
cd ~/.dotfiles && stow ruff
```

In this command, `ruff` is the name of the directory in `~/.dotfiles`.

#### Uninstalling Configurations

If later you find my configurations somewhat disappointing,
you can uninstall the configurations like this:

```
cd ~/.dotfiles && stow -D ruff
```

Again,
`ruff` is the name of the directory you installed before.

### Something Worth Noting

If you have previous experience with `stow`,
please ignore this section.

If you are installing `ruff` for example,
please make sure that there is no such directory as `~/.config/ruff` before installing.
At least make it empty.
At least least do not make it contain `pyproject.toml`.
As time goes by,
you'll see what I mean.

## My [`tmux`](tmux/.config/tmux) Config

This config is adapted from the `tmux` config of [Dreams of Code](https://www.youtube.com/@dreamsofcode)

- [github repo](https://github.com/dreamsofcode-io/tmux)
- [youtube video](https://www.youtube.com/watch?v=DzNmUNvnB04)

### Keybindings

- The prefix key is `<c-space>` (in `vim` key notations)
- `<n>` represents a number key from (0 to 9)
- `<nav>` represents an arrow key or vim navigation keys
  (`h`, `j`, `k` or `l`)
- `<left>` and `<right>` are left and right arrow keys
- `<CR>` represents the enter key
- Vim key notations are used

| Effect                                    | Key                          | Description                                                                                                                 |
| ----------------------------------------- | ---------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| create a new window                       | `<prefix>c`                  |                                                                                                                             |
| switch between windows                    | `<prefix><n>`                | switch to window `n`                                                                                                        |
| switch to the next window                 | `<prefix>n` or `<c-s-right>` |                                                                                                                             |
| switch to the previous window             | `<prefix>p` or `<c-s-left>`  |                                                                                                                             |
| close a window                            | `<prefix>&`                  |                                                                                                                             |
| split the current pane vertically         | `<prefix>%`                  | "vertically" means that the new pane is to the right of the old pane; new panes will start in the current directory as well |
| split the current pane horizontally       | `<prefix>"`                  | "horizontally" means that the new pane is under the old pane; new panes will start in the current directory as well         |
| navigate through panes                    | `<prefix><nav>`              |                                                                                                                             |
| swap the current pane with the left pane  | `<prefix>{`                  |                                                                                                                             |
| swap the current pane with the right pane | `<prefix>}`                  |                                                                                                                             |
| show pane numbers                         | `<prefix>q`                  | select a pane by pressing the corresponding `<n>`                                                                           |
| zoom-in into a pane                       | `<prefix>z`                  |                                                                                                                             |
| turn a pane into a window                 | `<prefix>!`                  |                                                                                                                             |
| close a pane                              | `<prefix>x`                  |                                                                                                                             |
| list active sessions                      | `<prefix>s`                  |                                                                                                                             |
| preview windows for each session          | `<prefix>w`                  | attach to the selected session by pressing `<CR>`                                                                           |
| install plugins                           | `<prefix>I`                  |                                                                                                                             |
| enter copy mode                           | `<prefix>[`                  | `<c-v>` is used to toggle visual block mode in visual mode, instead of directly entering visual block mode                  |

### Theme

[catppuccin-tmux](https://github.com/catppuccin/tmux) is used as my tmux theme.

### Other Options

- new panes will start up in the same directory as the old pane
- mouse support is enabled
- window and pane numbering start from 1 instead of 0

## My [`fish`](fish/.config/fish) Config

### Aliases

The aliases can be read from [`config.fish`](fish/.config/fish/config.fish),
and some of them are highly personal.
Therefore,
detailed explanation won't be given here.

### Plugin Managers

- [`oh-my-fish`](https://github.com/oh-my-fish/oh-my-fish)
- [`fisher`](https://github.com/jorgebucaran/fisher)

#### `oh-my-fish` Plugins

Here is a (probably incomplete) list of plugins installed with `oh-my-fish` (excluding `oh-my-fish` itself):

- Plugins
  - [`git`](https://github.com/jhillyerd/plugin-git)
  - [`bass`](https://github.com/edc/bass)
  - [`brew`](https://github.com/oh-my-fish/plugin-brew)
  - [`colored-man-pages`](https://github.com/PatrickF1/colored_man_pages.fish)
  - [`export`](https://github.com/oh-my-fish/plugin-export)
  - [`osx`](https://github.com/oh-my-fish/plugin-osx)
  - [`wifi-password`](https://github.com/oh-my-fish/plugin-wifi-password)
  - [`z`](https://github.com/oh-my-fish/plugin-z)
- Themes
  - [`trout`](https://github.com/oh-my-fish/theme-trout)

#### `fisher` Plugins

- [`tmux.fish`](https://github.com/budimanjojo/tmux.fish)

Here is a definitely complete list of plugins installed with `fisher` (excluding `fisher` itself):

## My [`latex_neovim`](latex_neovim/.config/nvim) Config

The `neovim` configuration shown in this repo ([`latex_neovim`](latex_neovim/.config/nvim)) is based on that of [Fireond](https://github.com/Fireond/dotfiles).
This config is slightly tuned for writing $\LaTeX$ documents,
and is not guaranteed to work on your machine
(in fact,
it doesn't even work perfectly on my machine).
Therefore,
using this config is not recommended.
A more detailed explanation of this config can be found [here](https://space.bilibili.com/171766861/channel/series) in his Bilibili channel.

## My [`AstroNvim`](https://astronvim.com) Config

Please refer to [my config](https://github.com/brianShan974/astronvim4-config) where the documentation is not complete.

## My [`game` Directory](game/.config/game)

Contains my Stardew Valley saves.
Please make sure that you know what you're doing before trying to run `stow game`.

## My [`gitignore`](gitignore) Config

Please run

```
git config --global core.excludesfile "~/.gitignore"
```

after running

```
stow gitignore
```

assuming you placed the `.dotfiles` directory under `~`.
