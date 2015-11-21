#!/bin/sh
#
# ~/.xinitrc
#

xinitrcd=/etc/X11/xinit/xinitrc.d
xresources=$HOME/.Xresources
xkbmap=$HOME/.Xkbmap

for file in "$xinitrcd"/*
do
    test -x "$file" && . "$file"
done

if test -f "$xresources"
then
    xrdb -merge "$xresources"
fi

if test -f "$xkbmap"
then
    setxkbmap $(cat "$xkbmap")
fi

xscreensaver -no-splash &
xterm -geometry 80x43 &

exec wmaker
