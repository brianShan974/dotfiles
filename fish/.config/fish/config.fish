if status is-interactive
    # Commands to run in interactive sessions can go here
end

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

    # alias
    alias dev="cd ~/Developer/"
else
    # alias
    alias dev="cd ~/dev/"
end

# environment variables
set -U fish_user_paths ~/.npm-packages/bin $fish_user_paths

# configs
alias dfc="cd ~/.dotfiles/"
alias nvimconfig="cd ~/.config/nvim/"
alias astroconfig="cd ~/.dotfiles/astronvim4/.config/nvim/"
alias fishconfig="nvim ~/.config/fish/config.fish"

# python virtual env
alias vc="python3 -m venv .venv"
alias va="source .venv/bin/activate.fish"
alias vr="rm -rf .venv"
alias vd="deactivate"

# important dirs
if test -d /opt/homebrew
    alias ICL="cd ~/Developer/ICL"
else
    alias ICL="cd ~/dev/ICL"
end

# shortcuts
alias clc="clear"

# editor = nvim
set -gx EDITOR nvim
alias n="nvim"

# fish vim mode
set -g fish_key_bindings fish_vi_key_bindings

# ssh to lab machines at ICL
if command -v jot >/dev/null
    alias sshtolab="ssh -t zs524@shell$(jot -r 1 1 5).doc.ic.ac.uk /vol/linux/bin/sshtolab"
end

# thefuck
if command -v thefuck >/dev/null
    thefuck --alias | source
end

# neofetch
# if command -v neofetch >/dev/null
#     neofetch
# end

# raspberry pi
if test -d /media/storage/brian/
    alias animed="cd /media/storage/brian/videos/番/站外"
    alias anime="sudo /snap/bin/nvim /etc/transmission-rss.conf && sudo service transmission-rss restart"
end

# lab machine
if test -e /vol/linux/bin/nfiles
    alias nfiles="/vol/linux/bin/nfiles"
end
