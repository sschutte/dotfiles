#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export TERM=rxvt-unicode
export EDITOR="emacs -nw"
screenfetch
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'
export JAVA_FONTS=/usr/share/fonts/TTF
