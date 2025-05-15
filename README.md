# My Dotfiles

My dotfiles for Unix-like operating systems.
Definitely works on macOS.
May (probably definitely does) work on linux.
Basically unusable on Windows.

## Installation

### Dependencies

**The dependency list below is incomplete, since I forgot to keep track of this list when I started managing my dotfiles.**

Please install `git` before using these dotfiles and installing other dependencies.
Since you are here,
you have probably already installed [`git`](https://git-scm.com/).

Please install [`gnu-stow`](https://www.gnu.org/software/stow/) using your favorite package manager, mine is [Homebrew](https://brew.sh/) by the way, since I'm using a mac.

Here is a list of all software tools that I have a config for:

- [bottom](https://bottom.pages.dev/) in [bottom](bottom)
- [btop](https://github.com/aristocratos/btop) in [btop](btop)
- [Cargo](https://doc.rust-lang.org/stable/cargo/) in [cargo](cargo)
- [clangd](https://clangd.llvm.org/) in [clangd](clangd)
- [eDEX-UI](https://github.com/GitSquared/edex-ui) in [edex_ui](edex_ui)
- [fanyi](https://github.com/afc163/fanyi) in [fanyi](fanyi)
- [fish](https://fishshell.com/) in [fish](fish)
- [git](https://git-scm.com/) in [gitignore](gitignore)
- [hyprland](https://hyprland.org/) (deprecated) in [deprecated_hyprland](deprecated_hyprland)
- [IdeaVim](https://lp.jetbrains.com/ideavim/) in [ideavimrc](ideavimrc)
- [joshuto](https://crates.io/crates/joshuto) (deprecated) in [deprecated_joshuto](deprecated_joshuto)
- [kitty](https://sw.kovidgoyal.net/kitty/) in [kitty](kitty)
- [neovim](https://neovim.io/) in [latex_neovim](latex_neovim), [neovim](neovim) and [lazyvim](lazyvim)
- [neofetch](https://github.com/dylanaraps/neofetch) (deprecated) in [deprecated_neofetch](deprecated_neofetch)
- [ranger](https://ranger.fm/) (deprecated) in [deprecated_ranger](deprecated_ranger)
- [rofi](https://davatorium.github.io/rofi/) in [rofi](rofi)
- [ruff](https://docs.astral.sh/ruff/) in [ruff](ruff)
- [ShellGPT](https://github.com/TheR1D/shell_gpt) in [shell_gpt](shell_gpt)
- [skhd](https://github.com/koekeishiya/skhd) in [skhd](skhd)
- [tmux](https://github.com/tmux/tmux) in [tmux](tmux)
- [Waybar](https://github.com/Alexays/Waybar) (deprecated) in [deprecated_waybar](deprecated_waybar)
- [xinit](https://linux.die.net/man/1/xinit) in [xinitrc](xinitrc)
- [yabai](https://github.com/koekeishiya/yabai) (deprecated) in [deprecated_yabai](deprecated_yabai)
- [yazi](https://yazi-rs.github.io/) in [yazi](yazi)
- [zathura](https://pwmt.org/projects/zathura/) in [zathura](zathura)
- [zed](https://zed.dev/) in [zed](zed)
- [Zsh](https://www.zsh.org/) (deprecated) in [deprecated_zsh](deprecated_zsh)

#### My [yazi](https://github.com/sxyazi/yazi) Config Dependencies

- [glow](https://github.com/charmbracelet/glow) is used by the [glow.yazi](https://github.com/Reledia/glow.yazi) plugin to preview markdown files
- [hexyl](https://github.com/sharkdp/hexyl) is used by the [hexyl.yazi](https://github.com/Reledia/hexyl.yazi) plugin to preview binary files

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
If you don't want the submodules, you may want to run this command:

```
git clone https://github.com/brianShan974/dotfiles.git ~/.dotfiles
```

If you do want the full config, please run this command instead:

```
git clone --recurse-submodules https://github.com/brianShan974/dotfiles.git ~/.dotfiles
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

## [My `fanyi` Config](fanyi)

Disabled deepseek access.

## [My `fish` Config](fish)

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

Here is a (definitely complete) list of plugins installed with `fisher` (excluding `fisher` itself):

- [`tmux.fish`](https://github.com/budimanjojo/tmux.fish)

## [My `game` Directory](game)

Contains my Stardew Valley saves.
Please make sure that you know what you're doing before trying to run `stow game`.

## [My `gitignore` Config](gitignore)

Please run

```
git config --global core.excludesfile "~/.dotfiles/gitignore/.gitignore"
```

assuming you placed the `.dotfiles` directory under `~`, because for some reason, I just can't `stow gitignore`.

## [My `latex_neovim` Config](latex_neovim)

The `neovim` configuration shown in this repo ([`latex_neovim`](latex_neovim/.config/nvim)) is based on that of [Fireond](https://github.com/Fireond/dotfiles).
This config is slightly tuned for writing $\LaTeX$ documents,
and is not guaranteed to work on your machine
(in fact,
it doesn't even work perfectly on my machine).
Therefore,
using this config is not recommended.
A more detailed explanation of this config can be found [here](https://space.bilibili.com/171766861/channel/series) in his Bilibili channel.

## [My `lazyvim` Config](lazyvim)

This is the `neovim` config that I'm currently using.
It is added to this repo as a git submodule.
Please give me a star in [this](https://github.com/brianShan974/lazyvim-config) repo if you like my config.

## [My `shell_gpt` Config](shell_gpt)

This config uses deepseek-coder:6.7b as the model.
If you want to use other models, please modify [this](shell_gpt/.config/shell_gpt/.sgptrc) file.
In addition, please replace the user `szh` to your user in the paths in this file.

## [My `tmux` Config](tmux)

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

## [My `yazi` Config](yazi)

Here is a list of plugins installed with `ya`:

- [first-non-directory.yazi](https://github.com/lpanebr/yazi-plugins/tree/main/first-non-directory.yazi), replaced the default `f` key with `F`
- [full-border.yazi](https://github.com/yazi-rs/plugins/tree/main/full-border.yazi)
- [git.yazi](https://github.com/yazi-rs/plugins/tree/main/git.yazi)
- [glow.yazi](https://github.com/Reledia/glow.yazi)
- [jump-to-char.yazi](https://github.com/yazi-rs/plugins/tree/main/jump-to-char.yazi)
- [lazygit.yazi](https://github.com/Lil-Dank/lazygit.yazi)
- [toggle-pane.yazi](https://github.com/yazi-rs/plugins/tree/main/toggle-pane.yazi)
- [vcs-files.yazi](https://github.com/yazi-rs/plugins/tree/main/vcs-files.yazi)
- [what-size.yazi](https://github.com/pirafrank/what-size.yazi)

Here is a list of flavors installed with `ya`:

- [catppuccin-mocha.yazi](https://github.com/yazi-rs/flavors/tree/main/catppuccin-mocha.yazi)
