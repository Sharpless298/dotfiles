#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

set -o vi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias less='less -Q'
alias man='man -P "less -Q"'

export QT_QPA_PLATFORMTHEME="qt5ct"                         
export QT_STYLE_OVERRIDE="qt5ct"

