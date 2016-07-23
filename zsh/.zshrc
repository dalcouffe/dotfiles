# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# zshrc_local is for local settings. Should look something like this:
# CODE_HOME_DIR=${HOME}/code
# POWERLINE_BASE=/usr/local/lib/python2.7
# ZSH_CUSTOM=${CODE_HOME_DIR}/oh-my-zsh-custom
# DOCKER_ANSIBLE_HOME=${CODE_HOME_DIR}/docker-ansible
# export PROJECT_ROOT=${CODE_HOME_DIR}/cba-deploy
#ZSH_THEME="gianu"
ZSH_THEME="jreese"

source ~/.zshrc_local

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(vi-mode alm bundler git java6)
plugins=(bundler git alm appsdk docker docker-compose docker-local)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
alias la='ls -ap'
alias l='ls -lap'
alias v=vim
alias up='cd ..'
alias du='du -h'
alias df='df -h'
alias dkmc='docker kill `docker ps -q`'
alias sm='emacs -nw'
alias gs='git status'
alias sm="docker_run -v $HOME/code:/home/docker/code -v $HOME/docker/emacs.cache:/home/docker/.emacs.d/.cache -h dev spacemacs"
export GRADLE_OPTS="-Xmx2G"
export EDITOR=vim
export POWERLINE_HOME=$POWERLINE_BASE/powerline
unset GREP_OPTIONS
unalias gb

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"
