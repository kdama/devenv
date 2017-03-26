export ZSH=/home/vagrant/.oh-my-zsh

ZSH_THEME="spaceship"
DISABLE_AUTO_UPDATE="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export SPACESHIP_PROMPT_SYMBOL=$
export SPACESHIP_PREFIX_SHOW=false
export SPACESHIP_HOST_SHOW=false
export SPACESHIP_TIME_SHOW=false
export SPACESHIP_NVM_SHOW=false
export SPACESHIP_RUBY_SHOW=false
export SPACESHIP_SWIFT_SHOW_LOCAL=false
export SPACESHIP_XCODE_SHOW_LOCAL=false
export SPACESHIP_XCODE_SHOW_GLOBAL=false
export SPACESHIP_GOLANG_SHOW=false
export SPACESHIP_VENV_SHOW=false
export SPACESHIP_PYENV_SHOW=false

export FORCE_COLOR=1
