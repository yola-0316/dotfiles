# ~/.zshenv should only be a one-liner that sources this file
# echo "source ~/dotfiles/config/zsh/.zshenv" >| ~/.zshenv

##########
# XDG @see https://wiki.archlinux.org/title/XDG_Base_Directory
##########

DEFAULT_XDG_CACHE_HOME=$HOME/.cache
DEFAULT_XDG_CONFIG_HOME=$HOME/.config
DEFAULT_XDG_DATA_HOME=$HOME/.local/share
DEFAULT_XDG_STATE_HOME=$HOME/.local/state
DEFAULT_XDG_RUNTIME_DIR=$HOME/.xdg

DEFAULT_XDG_CONFIG_DIRS=/etc/xdg
DEFAULT_XDG_DATA_DIRS=/usr/local/share:/usr/share

# Set XDG dirs
export XDG_CACHE_HOME=~/dotfiles/cache
export XDG_CONFIG_HOME=~/dotfiles/config
export XDG_DATA_HOME=~/dotfiles/local/share
export XDG_CAVE_HOME=~/dotfiles/local/cave
export XDG_STATE_HOME=~/dotfiles/local/state
# XDG_RUNTIME_DIR will made vscode become two instance from click icon and start from cli
# https://github.com/microsoft/vscode/issues/84808
# https://code.visualstudio.com/docs/editor/portable
# export XDG_RUNTIME_DIR=~/.xdg

if [[ "$OSTYPE" == darwin* ]]; then
  export XDG_DESKTOP_DIR=~/Desktop
  export XDG_DOCUMENTS_DIR=~/Documents
  export XDG_DOWNLOAD_DIR=~/Downloads
  export XDG_VIDEOS_DIR=~/Movies
  export XDG_MUSIC_DIR=~/Music
  export XDG_PICTURES_DIR=~/Pictures
#   public
fi

##########
# global env
##########

# export SHELL_SESSIONS_DISABLE=1
[[ -d ~/dotfiles ]] && export DOTFILES=~/dotfiles
export ZDOTDIR=~/dotfiles/config/zsh
export CLICOLOR="1"
# export LSCOLORS="exfxcxdxbxGxDxabagacad"
export DEVELOPMENT_HOME=$HOME/workspace/work
export THEFUCK_PRIORITY="git_hook_bypass=1100" # TODO: remove after thefuck upgrade to 3.32

##########
# XDG fix
##########
# pyenv
export PYENV_ROOT=$XDG_DATA_HOME/pyenv
# rustup
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
# cargo
export CARGO_HOME="$XDG_DATA_HOME"/cargo
# npmrc
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
# nodejs
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
# docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
# python
export PYTHONHISTFILE=$XDG_DATA_HOME/python/python_history
# hnvm
export HNVM_PATH=$XDG_DATA_HOME/hnvm
# yarn
# alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"' not work
# python
# export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonstartup.py" not work
# gem
export GEM_HOME=$XDG_DATA_HOME/gem
export GEM_SPEC_CACHE=$XDG_CACHE_HOME/gem
export PATH=$GEM_HOME/bin:$PATH
# go
export GOPATH=~/workspace/go
# v
export VMODULES=$XDG_DATA_HOME/v
# dart
export ANALYZER_STATE_LOCATION_OVERRIDE="$XDG_DATA_HOME/dartServer"

# for XDG
. "/Users/zhi.huang/dotfiles/local/share/cargo/env"
export GVIMINIT='let $MYGVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/gvimrc" : "$XDG_CONFIG_HOME/nvim/init.gvim" | so $MYGVIMRC'
export VIMINIT='let $MYVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/vimrc" : "$XDG_CONFIG_HOME/nvim/init.vim" | so $MYVIMRC'
