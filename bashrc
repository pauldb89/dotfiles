# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias ws='cd ~/workspace'
alias recompile-cython='cython ~/workspace/cdec/python/src/sa/_sa.pyx'
alias build-extractor='cd ~/workspace/cdec/python && python setup.py install --user && cd -'
alias recompile-extractor='recompile-cython && build-extractor'

# Environment variables

export EDITOR="vim"
