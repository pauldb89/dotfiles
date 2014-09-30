# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gianu"

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

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:$HOME/workspace/tools:$HOME/scripts:/usr/local/texlive/2014/bin/x86_64-linux

# User specific aliases and functions
alias ws="cd ~/workspace"
alias print-file="lpr -Pmono4dhup"

alias recompile-cython="cython ~/workspace/cdec/python/cdec/sa/_sa.pyx"
alias build-extractor="cd ~/workspace/cdec/python && python setup.py install --user && cd -"
alias recompile-extractor="recompile-cython && build-extractor"

alias mysql-backup="mysql -u root -h localhost -p -D ia_backup"
alias mysql-ia="mysql -u root -h localhost -D infoarena2 -p"

alias py="ipython --pylab"
alias make="make -j8"
alias sum="awk '{ sum += \$1 } END { print sum }'"

# Environment variables
export EDITOR="vim"
export TERM=xterm

export CDEC=$HOME/workspace/cdec

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PYTHONPATH=$PYTHONPATH:$HOME/workspace/jodohin
