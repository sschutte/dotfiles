dotfiles
========

Config files, settings etc etc

apps to install:
================

* termite terminal emulator
* urxvt-unicode
* guake
* compton
* i3wm-*
* tg from github
* profanity
* irssi
* mutt patched, mutt sidebar
* offlineimap, msmtp
* AltYo.git
* 

stuff to do:
============

* ssh keys
* 

.bashrc
=======

Prevent history loss with multiple terminals:

```shell


# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"


```
