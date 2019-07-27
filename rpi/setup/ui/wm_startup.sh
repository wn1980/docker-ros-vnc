#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo -e "\n------------------ startup of window manager ------------------"

### disable screensaver and power management
xset -dpms &
xset s noblank &
xset s off &

#setxkbmap -layout us,th -option "grp:lctrl_lshift_toggle,grep_led:scroll,compose:ralt"

#/usr/bin/icewm-session > $STARTUPDIR/log/wm.log &
/usr/bin/jwm-session > $STARTUPDIR/log/wm.log &
#/usr/bin/tinywm-session > $STARTUPDIR/log/wm.log &

sleep 1
cat $STARTUPDIR/log/wm.log
