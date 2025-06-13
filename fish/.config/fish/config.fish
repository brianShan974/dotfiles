if status is-interactive
    # Commands to run in interactive sessions can go here
end

# -------------- Homebrew --------------

# from https://github.com/orgs/Homebrew/discussions/4412#discussioncomment-8314181
if test -d /home/linuxbrew/.linuxbrew
    # Homebrew is installed on Linux

    set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew"
    set -gx HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar"
    set -gx HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew"
    set -gx PATH "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin" $PATH
    set -q MANPATH; or set MANPATH ''
    set -gx MANPATH "/home/linuxbrew/.linuxbrew/share/man" $MANPATH
    set -q INFOPATH; or set INFOPATH ''
    set -gx INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH

    # Homebrew asked for this in order to `brew upgrade`
    # set -gx HOMEBREW_GITHUB_API_TOKEN {api token goes here, don't remember where that's created}
else if test -d /opt/homebrew
    # Homebrew is installed on MacOS

    /opt/homebrew/bin/brew shellenv | source
    export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"
    # export PATH="$HOME/.jenv/bin:$PATH"
    # eval "$(jenv init -)"
    set -gx CPPFLAGS -I/opt/homebrew/opt/openjdk/include
    set -gx CPPFLAGS "-I/opt/homebrew/opt/openjdk@17/include"
end

# -------------- General Fish Config --------------

# ---- environment variables ----
set -U fish_user_paths ~/.npm-packages/bin $fish_user_paths

# ---- editor = nvim ----
set -gx EDITOR nvim

# ---- fish vim mode ----
set -g fish_key_bindings fish_vi_key_bindings

# -------------- Aliases and Shortcuts --------------

# ---- btop ----
abbr --add b btop

# ---- cargo update ----
abbr --add cup cargo install-update -a

# ---- clear ----
abbr --add clc clear

# ---- codecrafters ----
abbr --add cct codecrafters test
abbr --add ccs codecrafters submit

# ---- configs ----
alias dfc="cd ~/.dotfiles/"
alias dfcreadme="nvim ~/.dotfiles/README.md"
alias nvimconfig="cd ~/.config/nvim/"
alias astroconfig="cd ~/.dotfiles/astronvim4/.config/nvim/"
alias lazyconfig="cd ~/.dotfiles/lazyvim/.config/nvim/"
alias fishconfig="nvim ~/.dotfiles/fish/.config/fish/config.fish"
alias tmuxconfig="nvim ~/.dotfiles/tmux/.config/tmux/tmux.conf"
alias snippets="cd ~/.config/nvim/snippets/"

# ---- fastfetch ----
abbr --add ff fastfetch

# ---- ICL database ----
if test -e ~/.pgdb-zs524-zs524
    source ~/.pgdb-zs524-zs524
end

# ---- important dirs ----
if test -d ~/Developer
    alias dev="cd ~/Developer/"
    alias ICL="cd ~/Developer/ICL/"
    alias cloned="cd ~/Developer/cloned/"
else
    alias dev="cd ~/dev/"
    alias ICL="cd ~/dev/ICL/"
    alias cloned="cd ~/dev/cloned/"
end
alias dt="cd ~/Desktop/"
alias doc="cd ~/Documents/"
alias cven="cd ~/Documents/curriculum-vitae/"
alias cvcn="cd ~/Documents/curriculum-vitae-cn/"

# ---- lazygit ----
abbr --add lg lazygit

# ---- neovim ----
abbr --add n nvim

# ---- on lab machine ----
if test -e /vol/linux/bin/nfiles
    alias nfiles="/vol/linux/bin/nfiles"
end

# ---- python virtual env ----
alias vc="python3 -m venv .venv"
alias va="source .venv/bin/activate.fish"
alias vr="rm -rf .venv"
alias vd="deactivate"

# ---- raspberry pi ----
if test -d /media/storage/brian/
    alias animed="cd /media/storage/brian/videos/番/站外"
    alias anime="sudo /snap/bin/nvim /etc/transmission-rss.conf && sudo service transmission-rss restart"
end

# ---- reloads ----
alias fishreload="source ~/.config/fish/config.fish"
alias tmuxreload="tmux source ~/.config/tmux/tmux.conf"

# ---- rust ----
abbr --add c cargo
abbr --add cb cargo build
abbr --add cbr cargo build --release
abbr --add cr cargo run
abbr --add cre cargo run --example
abbr --add crr cargo run --release
abbr --add crre cargo run --release --example
abbr --add ct cargo test

#  ---- ssh to lab machines at ICL ----
if command -v jot >/dev/null
    alias sshtolab="ssh -t zs524@shell$(jot -r 1 1 5).doc.ic.ac.uk /vol/linux/bin/sshtolab"
end

#  ---- sshfs ----
alias sshfspi="sshfs he_is@en.brianshan974.me:/ ~/raspberrypi_root/ -p 22 -o volname=PiRoot"
alias sshfspiall="sshfs he_is@en.brianshan974.me:/ ~/raspberrypi_root/ -p 22 -o volname=PiRoot && sshfs he_is@en.brianshan974.me:/home/he_is ~/raspberrypi_home/ -p 22 -o volname=PiHome && sshfs he_is@en.brianshan974.me:/media/storage/brian ~/raspberrypi_storage/ -p 22 -o volname=PiStorage"
alias sshfspihome="sshfs he_is@en.brianshan974.me:/home/he_is ~/raspberrypi_home/ -p 22 -o volname=PiHome"
alias sshfspistorage="sshfs he_is@en.brianshan974.me:/media/storage/brian ~/raspberrypi_storage/ -p 22 -o volname=PiStorage"
alias umountpiall="umount ~/raspberrypi_root && umount ~/raspberrypi_home && umount ~/raspberrypi_storage/"
alias umountpi="umount ~/raspberrypi_root"
alias umountpihome="umount ~/raspberrypi_home"
alias umountpistorage="umount ~/raspberrypi_storage/"

# -------------- Utils --------------

# ---- neofetch ----
# if command -v neofetch >/dev/null
#     neofetch
# end

# ---- thefuck ----
if command -v thefuck >/dev/null
    thefuck --alias | source
end

# ---- tmux ----
# if test -d ~/.config/tmux/plugins/
#     tmux
# end

# ---- tmux.fish ----
# set -gx fish_tmux_autostart true
set -gx fish_tmux_autoquit true

# ---- Added by LM Studio CLI (lms) ----
set -gx PATH $PATH /Users/szh/.lmstudio/bin

# -------------- Better Tools --------------

# ls
if command -v eza >/dev/null
    alias ls="eza --git --icons"
    alias ll="eza --git --icons -la"
    alias lt="eza --git --icons -l -T --git-ignore"
end
# cat
if command -v bat >/dev/null
    alias cat="bat"
end

# -------------- Functions --------------

# yazi change directory
function yy
    set -l tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file=$tmp
    set cwd (cat -- $tmp)
    if test -s $tmp
        if test -n "$cwd" -a "$cwd" != "$PWD"
            cd -- $cwd
            commandline -f repaint # updates the prompt
        end
    end
    rm -f -- $tmp
end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
