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
end

# environment variables
set -U fish_user_paths ~/.npm-packages/bin $fish_user_paths

# configs
alias dfc="cd ~/.dotfiles/"
alias nvimconfig="cd ~/.config/nvim/"
alias astroconfig="cd ~/.dotfiles/astronvim4/.config/nvim/"
alias mynvimconfig="cd ~/.dotfiles/my_nvim/.config/nvim/"

# python virtual env
alias venvc="python3 -m venv .venv"
alias venva="source .venv/bin/activate.fish"

# shortcuts
alias clc="clear"

# editor = nvim
set -gx EDITOR nvim

# fish vim mode
set -g fish_key_bindings fish_vi_key_bindings

# thefuck
thefuck --alias | source
