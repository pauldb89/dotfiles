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
alias ssh-tiger='ssh paulb@tiger.cs.ox.ac.uk'
alias mysql-ia='mysql -u root -h localhost -D infoarena2 -p'
alias ssh-ia='ssh infoarena@direct.infoarena.ro -p 21883 -AC'
alias ssh-eval='ssh eval@iaeval.dyndns.org -AC'
alias mysql-backup='mysql -u root -h localhost -p -D ia_backup'

# Environment variables

export EDITOR="vim"
