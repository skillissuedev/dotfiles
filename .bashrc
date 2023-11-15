#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias hyprpicker='hyprpicker | wl-copy'
PS1='[\u@\h \W]\$ '

