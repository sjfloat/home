#!/bin/sh
#
# fluxbox startup-script:
#
# Lines starting with a '#' are ignored.

# Change your keymap:
#xmodmap "/home/steve/.Xmodmap"
#fbsetroot --solid black
#xrandr -s 1360x768

#nm-applet&
#gnome-sound-applet&

# Applications you want to run with fluxbox.
# MAKE SURE THAT APPS THAT KEEP RUNNING HAVE AN ''&'' AT THE END.
#
# unclutter -idle 2 &
# wmnd &
# wmsmixer -w &
# idesk &

#gkrellm &
#checkgmail &
#dropbox start
#/home/steve/edit-server/edit-server.pl &
xscreensaver -no-splash &
conky &
xcompmgr -c -o.55&

# And last but not least we start fluxbox.
# Because it is the last app you have to run it with ''exec'' before it.

exec fluxbox
# or if you want to keep a log:
# exec fluxbox -log "/home/steve/.fluxbox/log"
