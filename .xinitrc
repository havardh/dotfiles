#!/bin/sh


# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

export PATH="$PATH:/home/havard/bin:/usr/share/intellij-idea-ultimate-edition/bin"

export TERMINAL=urxvt

setxkbmap no

exec i3
