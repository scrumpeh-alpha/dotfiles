#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
[ -r /home/scrumpeh/.config/byobu/prompt ] && . /home/scrumpeh/.config/byobu/prompt   #byobu-prompt#

