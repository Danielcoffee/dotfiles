#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias vi='nvim'
alias vim='nvim'
set -o vi

export EDITOR=nvim
export VISUAL=nvim
